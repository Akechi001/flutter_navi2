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
            SizedBox(height: 16), // Add some spacing between the buttons
            ElevatedButton(
              onPressed: () {
                try {
                  Navigator.pushNamed(context, '/Second',
                      arguments: 'This is from Third to Second');
                }catch(e){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error: Route not found'),
                    ),
                  );
                }
              },

              child: Text('Go back to previous page'),
            ),
            SizedBox(height: 16), // Add some spacing between the buttons
          ],
        ),
      ),
    );
  }
}
