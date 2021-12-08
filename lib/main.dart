import 'package:flutter/material.dart';

void main() {
  runApp( IamPoor());
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



