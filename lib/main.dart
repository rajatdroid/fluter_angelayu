import 'package:flutter/material.dart';
import 'package:iampoor/_ask_me_anything.dart';
import 'package:iampoor/_dicewidget.dart';
import 'package:iampoor/_manualimagegrid.dart';
import 'package:iampoor/_visitingcard.dart';
import 'package:iampoor/_visitingcard_by_angelayu.dart';
import 'package:iampoor/section6_43.dart';

void main() {

  /**
   * Uncomment any of the below as per your needs
   */
  //runApp( IamPoor());
  //runApp(ChallengeApp());
  //runApp(VisitingCard());
  //runApp(VisitingCardByAngela());
  //runApp(ImageGridWidget());
  //runApp(DiceApp());
  runApp(AskMeAnything());
}

class IamPoor extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: IamPoorHome(),
    );
  }
}

class IamPoorHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I am Poor Appbar'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child: Image(
          image : AssetImage('images/cartoon.png'),
        ),
      ),
      drawer: Drawer(elevation: 16,
        child: DrawerHome(),
      ),
    );
  }
}

class DrawerHome extends StatelessWidget {
  const DrawerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Drawe title')
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Text('I am drawer text'),
        ),
      ),
    );
  }
}






