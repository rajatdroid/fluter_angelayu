import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: DiceScaffold(),
    );
  }
}

class DiceScaffold extends StatelessWidget {
  const DiceScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice App'),
      ),
      backgroundColor: Colors.red,
      body: DiceStateWidget(),
    );
  }
}


class  DiceStateWidget extends StatefulWidget {
  const DiceStateWidget({Key? key}) : super(key: key);

  @override
  DiceState createState() => DiceState();
}

int getRandomDiceNo(){
  return Random().nextInt(6)+1;
}

class DiceState extends State<DiceStateWidget> {

  int leftDiceState = 1;
  int rightDiceState = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(
            onPressed: (){
              print('Left dice clicked');
              doPressAction();
            },
            child: Image.asset('images/dice$leftDiceState.png'),
          ),
          ),
          Expanded(child: TextButton(
            onPressed: (){
              print('Right dice pressed');
              doPressAction();
            },
            child: Image.asset('images/dice$rightDiceState.png'),
          ),
          )
        ],
      ),
    );
  }

  void doPressAction() {
     setState(() {
      leftDiceState = getRandomDiceNo();
      rightDiceState = getRandomDiceNo();
    });
  }
}


