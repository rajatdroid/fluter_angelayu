import 'package:flutter/material.dart';


class VisitingCardByAngela extends StatelessWidget {
  const VisitingCardByAngela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWidget(),
    );
  }
}


class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            children:   [
              SizedBox(height: 100,
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/cartoon.png'),
                backgroundColor: Colors.red,
              ),
              const Text('Angela Yu',
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Corinthia'
                ),
              ),
              const Text('Flutter Developer',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito',
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                padding: const EdgeInsets.symmetric(vertical: 6,
                  horizontal: 10,),
                child: Row(
                  children: const [
                    Icon(Icons.phone,
                        color: Colors.teal,
                        size : 20),
                    SizedBox(width: 40,
                    ),
                    Text('9988776655',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                padding: const EdgeInsets.symmetric(vertical: 6,
                  horizontal: 10,),
                child: Row(
                  children: const [
                    Icon(Icons.email,
                        color: Colors.teal,
                        size : 20),
                    SizedBox(width: 40,
                    ),
                    Text('angela_yu@appbrewery.com',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
