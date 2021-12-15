import 'package:flutter/material.dart';
import 'package:iampoor/businesslogics/_storybrain.dart';

class StoryApp extends StatelessWidget {

  const StoryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Story App'),
        ),
        body: StoryScaffoldBody(
        ),
      ),
    );
  }
}

class StoryScaffoldBody extends StatefulWidget {
  const StoryScaffoldBody({Key? key}) : super(key: key);

  @override
  _StoryScaffoldBodyState createState() => _StoryScaffoldBodyState();
}

StoryBrain storyBrain = StoryBrain();

class _StoryScaffoldBodyState extends State<StoryScaffoldBody> {


  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/cartoon.png')),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex: 5,
          child: Container(
            alignment: Alignment.center,
            child: Text(storyBrain.getStoryAtIndex(index).getStoryText(),
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Nunito',
              fontSize: 15,
            ),),
          ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(flex: 1
              ,child: Visibility(
                  visible: storyBrain.getStoryAtIndex(index).getRouteOne().isNotEmpty,
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      index = storyBrain.getStoryAtIndex(index).getNextRouteOne();
                    });
                  } ,
                  child: Text(storyBrain.getStoryAtIndex(index).getRouteOne()),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                ),
              ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(flex: 1
                ,child: Visibility(
                  visible: storyBrain.getStoryAtIndex(index).getRouteTwo().isNotEmpty,
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        index = storyBrain.getStoryAtIndex(index).getNextRouteTwo();
                      });
                    } ,
                    child: Text(storyBrain.getStoryAtIndex(index).getRouteTwo()),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

