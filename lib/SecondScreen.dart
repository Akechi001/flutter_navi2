import 'package:flutter/material.dart';

import 'FirstScreen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen'), automaticallyImplyLeading: false),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(args.toString()),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()));
                  Navigator.pushNamed(context, '/First', arguments: 'Hi from SecondScreen to FirstScreen');
            },
                child: Text('Go back to First Screen'))
          ],
        ),
      ),
    );
  }
}