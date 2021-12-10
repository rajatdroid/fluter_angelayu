import 'package:flutter/material.dart';

class VisitingCard extends StatelessWidget {
  const VisitingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VCBody(),
    );
  }
}

class VCBody extends StatelessWidget {
  const VCBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                margin: EdgeInsets.only(top: 150.0),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                ),
                child: const Icon(
                  Icons.person,
                  color: Colors.orange,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: const Text('Angela yu',
                  style: TextStyle(fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: const Text('Flutter Developer',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                width: 140,
                color: Colors.white54,
                height: 2.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 30, right: 30),
                height: 50,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Icon(Icons.phone,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                          '9988776655'),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 30, right: 30),
                height: 50,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Icon(Icons.email,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                          'angela.yu@appbrewery.com'),
                    )
                  ],
                ),
              )
            ],

          ),
        ),
      ),
    );;
  }
}

