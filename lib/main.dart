import 'package:flutter/material.dart';
import 'package:iampoor/_visitingcard.dart';
import 'package:iampoor/section6_43.dart';

void main() {

  /**
   * Uncomment any of the below as per your needs
   */
  //runApp( IamPoor());
  //runApp(ChallengeApp());
  runApp(VisitingCard());
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
   );
  }

}



