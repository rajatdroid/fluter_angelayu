import 'package:flutter/material.dart';

class ImageGridWidget extends StatelessWidget {
  const ImageGridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Image Grid Manual',
      home: ImageGridScaffold(),
    );
  }
}

class ImageGridScaffold extends StatelessWidget {
  const ImageGridScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Image '),
      ),
      body: ImageGridScaffoldBody(),
    );
  }
}

class ImageGridScaffoldBody extends StatelessWidget {
  const ImageGridScaffoldBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.pink,
        border: Border.all(color: Colors.black,
            width: 10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(child: getRowLayout(0),
          margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.orange,
              border: Border.all(color: Colors.deepOrange, width: 3)
            ),
          ),
          Container(child: getRowLayout(1),
          margin: EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}

Widget getRowLayout(int offSet) {
  var row;
  switch (offSet){
    case 0 : {
      row = Row(
        children: [
          Expanded(
            child: Icon(Icons.work,
            color: Colors.green,),
          ),
          Expanded(
            child: Icon(Icons.fifteen_mp,
              color: Colors.green,),
          )
        ],
      );
      break;
    }

    case 1 : {
      row = Row(
        children: [
          Expanded(
            child: Icon(Icons.work,
              color: Colors.black,),
          ),
          Expanded(
            child: Icon(Icons.fifteen_mp,
              color: Colors.black,),
          )
        ],
      );
    }
  }
  return row;
}




