
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class QuizllerApp extends StatelessWidget {
  const QuizllerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizllerScaffold(),
    );
  }
}

class QuizllerScaffold extends StatelessWidget {
  const QuizllerScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzler App'),
      ),
      backgroundColor: Colors.grey,
      body : QuizzlerBody(),
    );
  }
}

class QuizzlerBody extends StatefulWidget {
  const QuizzlerBody({Key? key}) : super(key: key);

  @override
  _QuizzlerBodyState createState() => _QuizzlerBodyState();
}

class _QuizzlerBodyState extends State<QuizzlerBody> {

  List<bool> answers = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 10,
          child: Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(getRandomQuestion(),
            style: TextStyle(
              color: Colors.white
            ),
            ),
          ),
        ),

        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed:
                (){
              setState(() {
                if(answers.length == 7){
                  answers = [];
                }
                answers.add(true);
              });
              debugPrint('Yes Pressed');
            }, child: Text('Yes'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
            ),
          ),
        ),

        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed:
                (){
                  setState(() {
                    if(answers.length == 7){
                      answers = [];
                    }
                    answers.add(false);
                  });
            }, child: Text('No'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
              ),
            ),
          ),
        ),

        Expanded(
          flex: 1,
          child: Row(
            children:
              getScoreKeeper(answers),
          ),
        ),


      ],
    );
  }
}

List<String> getQuestions() =>
    ['Question 1',
    'Question 2',
    'Question 3',
    'Question 4',
    'Question 5',
    'Question 6',
    'Question 7'];



String getRandomQuestion() {
  return getQuestions()[Random().nextInt(6)+1];
}

List<Icon> getScoreKeeper(List<bool> answers){
  List<Icon> iconList = [];
  answers.map((e) => iconList.add(e ? Icon(Icons.check, color: Colors.white,) :
      Icon(Icons.cancel, color: Colors.white,))).toList();
  return iconList;
}
