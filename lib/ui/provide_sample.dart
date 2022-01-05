import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderApp extends StatelessWidget {
  const ProviderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChngeableData(),
      child: MaterialApp(
        home: ProviderSampleApp(),
      ),
    );
  }
}


class ProviderSampleApp extends StatelessWidget {
  const ProviderSampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Provider.of<ChngeableData>(context).mutableData,
        ),
      ),
      body: ScaffoldBody(),
    );
  }
}

class ScaffoldBody extends StatelessWidget {
  const ScaffoldBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: YellowRow(),
        flex: 1,),


        Expanded(child: RedColumn(),
          flex: 1,),
      ],
    );
  }
}

class YellowRow extends StatelessWidget {
  const YellowRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Center(
              child: Text(Provider.of<ChngeableData>(context).mutableData),
            ),
            ),


          Expanded(child: Center(
            child: Text(
                'This is right child of yellow row'
            ),
          ))
          ],

        ));
  }
}

class RedColumn extends StatelessWidget {
  const RedColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Expanded(child: Center(
            child: Text(
              'This is upper text of red column'
            ),
          ),
          ),

          Expanded(child: Center(
            child: TextField(
              onChanged: (newText) => Provider.of<ChngeableData>(context, listen: false).changeData(newText),
            ),
          ),
          ),

        ],

      ),
    );
  }
}

class ChngeableData extends ChangeNotifier{

  String mutableData = 'Initial Data';

  String getMutableData(){
    return mutableData;
  }

  void changeData(String newText){
    mutableData = newText;
    notifyListeners();
  }

}

