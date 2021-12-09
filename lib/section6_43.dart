import 'package:flutter/material.dart';


class ChallengeApp extends StatelessWidget {
  const ChallengeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChallengeHome(),
    );
  }
}

class ChallengeHome extends StatelessWidget {
  const ChallengeHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
              alignment: Alignment.center,
            ),
            Container(
              width: 100,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}

