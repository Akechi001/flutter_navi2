import 'package:flutter/material.dart';
import 'SecondScreen.dart';
import 'ThirdScreen.dart';
import 'main.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text('First Screen'), automaticallyImplyLeading: false),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 16), // Add some spacing between the buttons
            ElevatedButton(
              onPressed: () {
                try {
                  Navigator.pushNamed(context, '/Second',
                      arguments: 'This is from FirstScreen to SecondScreen');
                }catch(e){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error: Route not found'),
                    ),
                  );
                }
              },
              child: Text('Go to Second Screen'),
            ),
            SizedBox(height: 16), // Add some spacing between the buttons
            ElevatedButton(
              onPressed: () {
                try {
                  Navigator.pushNamed(context, '/Third',
                      arguments: 'This is from FirstScreen to ThirdScreen');
                }catch(e){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error: Route not found'),
                    ),
                  );
                }


                // Handle the onPressed action for the second button
              },
              child: Text('Go to Third Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
