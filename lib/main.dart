import 'package:flutter/material.dart';
import 'FirstScreen.dart';
import 'SecondScreen.dart';
import 'ThirdScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/First': (context) => FirstScreen(), // Home screen with the route '/'
        '/Second': (context) => SecondScreen(), // Search screen with the route '/search'
        '/Third': (context) => ThirdScreen(), // Profile screen with the route '/profile'
      },
      title: 'Navigation Codelab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(), // Set the first screen as the home.
    );
  }
}