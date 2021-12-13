import 'dart:math';

import 'package:flutter/material.dart';

class AskMeAnything extends StatelessWidget {
  const AskMeAnything({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: AskMeAnythingScaffold(),
    );
  }
}

class AskMeAnythingScaffold extends StatelessWidget {
  const AskMeAnythingScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask me Anything'),
      ),
      body: AskMeAnythingWidget(),
    );
  }
}

class AskMeAnythingWidget extends StatefulWidget {
  const AskMeAnythingWidget({Key? key}) : super(key: key);

  @override
  _AskMeAnythingWidgetState createState() => _AskMeAnythingWidgetState();
}

int getRandomNo(){
  return Random().nextInt(5)+1;
}

class _AskMeAnythingWidgetState extends State<AskMeAnythingWidget> {

  int defaultOffset = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton(onPressed : (){
        setState(() {
          defaultOffset = getRandomNo();
        });
      },
        child: Image.asset('images/balls/ball$defaultOffset.png'),
      ),
    );
  }
}


