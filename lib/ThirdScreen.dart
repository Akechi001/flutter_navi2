import 'package:flutter/material.dart';
import 'SecondScreen.dart';
import 'ThirdScreen.dart';
import 'main.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      appBar: AppBar(title: Text('Third Screen'), automaticallyImplyLeading: false),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(args.toString()),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Text('Button 1'),
            ),
            SizedBox(height: 16), // Add some spacing between the buttons
            ElevatedButton(
              onPressed: () {
                // Handle the onPressed action for the second button
              },
              child: Text('Button 2'),
            ),
          ],
        ),
      ),
    );
  }
}
