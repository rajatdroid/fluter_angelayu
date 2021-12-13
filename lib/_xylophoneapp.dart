import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: XyloScaffold(),
    );
  }
}

class XyloScaffold extends StatelessWidget {
  const XyloScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Xylophone'),
      ),
      backgroundColor: Colors.black,
      body: XyloScaffoldBody());
  }
}

class XyloScaffoldBody extends StatefulWidget {
  const XyloScaffoldBody({Key? key}) : super(key: key);

  @override
  _XyloScaffoldBodyState createState() => _XyloScaffoldBodyState();
}

class _XyloScaffoldBodyState extends State<XyloScaffoldBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          getXyloTile(Colors.red, 1),
          getXyloTile(Colors.purple, 2),
          getXyloTile(Colors.green, 3),
          getXyloTile(Colors.deepOrange, 4),
          getXyloTile(Colors.yellow, 5),
          getXyloTile(Colors.brown, 6),
          getXyloTile(Colors.cyan, 7),
        ],
      ),
    );
  }
}



Expanded getXyloTile(MaterialColor color, int soundNo) => Expanded(
  child: TextButton(
    onPressed: (){
      debugPrint('The soundNo is $soundNo');
        playSound(soundNo);
    },
    child: Container(
      color: color,
    ),
  ),
);

void playSound(int soundOffset){
  final player = AudioCache();
  String name = 'assets_note$soundOffset.wav';
  debugPrint('name of tone is $name');
  player.play(name);
}

