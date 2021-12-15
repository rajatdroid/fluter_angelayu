import 'package:flutter/material.dart';

const int mainColor  = 0XFF0a0d22;
const int overlayColor = 0XFF1d1f33;

class BMIApp extends StatelessWidget {
  const BMIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(mainColor
        ),
        ),
        primaryColor: Color(mainColor),
        scaffoldBackgroundColor: Color(mainColor),
      ),
      home: BMIAppScaffold(),
    );
  }
}

class BMIAppScaffold extends StatelessWidget {
  const BMIAppScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: BMIScaffoldBody(),
    );
  }
}


class BMIScaffoldBody extends StatefulWidget {
  const BMIScaffoldBody({Key? key}) : super(key: key);

  @override
  _BMIScaffoldBodyState createState() => _BMIScaffoldBodyState();
}

class _BMIScaffoldBodyState extends State<BMIScaffoldBody> {

  int height = 0;
  int weight = 0;
  int age = 0;
  int maleOverlayColor = overlayColor;
  int femaleOverlayColor = overlayColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          maleOverlayColor = Colors.teal.hashCode;
                          femaleOverlayColor = overlayColor;
                        });
                      },
                      child: getMaleFemaleLayout('Male', maleOverlayColor),
                    ),
                  ),
                  SizedBox(width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(onTap : (){
                      setState(() {
                        femaleOverlayColor = Colors.teal.hashCode;
                        maleOverlayColor = overlayColor;
                      });
                    },
                      child: getMaleFemaleLayout('Female', femaleOverlayColor),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: getOutsideContainerBoxDecor(overlayColor),
              child: getHeightWidget('kjh'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(child: getWeightAge(true),
                ),
                SizedBox(width: 20),
                Expanded(child: getWeightAge(false),
                )
              ],
            ),
          ),


        ],
      ),
    );
  }

  /**
   * Creates the Male / Female Selector Row
   */
  Widget getMaleFemaleLayout(String text, int bgColor) => Container(
    decoration: getOutsideContainerBoxDecor(bgColor),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.person,
          color: Colors.white,size: 100,),
        Text(text,
          style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );

  /**
   * Creates the height slider layout
   */
  Widget getHeightWidget(String text) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('HEIGHT',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
        ),
      ),

      Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Text('183 cm',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 35
          ),
        ),
      ),

      Expanded(
        child: Container(
          alignment: Alignment.bottomCenter,
          child: Slider(
            value: 0.0,
            onChanged: (double e){
              // ToDO : Here setState will be called which will update current Height
            },
          ),
        ),
      )
    ],
  );

  Widget getWeightAge(bool isWeight) => Container(
    decoration: getOutsideContainerBoxDecor(overlayColor),
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Column(
      children: [
        Text( isWeight ? 'HEIGHT' : 'AGE',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),

        SizedBox(height: 20,),

        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          child: Text( isWeight ? '$weight' : '$age',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35
            ),
          ),
        ),

        SizedBox(height: 20,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){},
              child: Icon(Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            TextButton(
              onPressed: (){},
              child: Icon(Icons.remove, color: Colors.white,
                size: 30,
              ),
            )
          ],
        )
      ],
    ),
  );

  BoxDecoration getOutsideContainerBoxDecor(int color) =>  BoxDecoration(
      color: Color(color),
      borderRadius: BorderRadius.all(Radius.circular(6))
  );


}





