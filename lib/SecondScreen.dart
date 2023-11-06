import 'package:flutter/material.dart';
import 'package:flutter_navi2/ThirdScreen.dart';

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
            SizedBox(height: 16), // Add some spacing between the buttons
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdScreen()));
                  Navigator.pushNamed(context, '/Third', arguments: 'This is from Second Screen to Third Screen');
                },
                child: Text('Go To Third Screen')),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/First', arguments: 'Hi from SecondScreen to FirstScreen');
            },
                child: Text('Go back to First Screen'))
          ],
        ),
      ),
    );
  }
}