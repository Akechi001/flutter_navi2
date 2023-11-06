import 'package:flutter/material.dart';
class DynamicScreens extends StatelessWidget {
  final int numberOfScreens;

  DynamicScreens(this.numberOfScreens);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generated Screens'),
      ),
      body: ListView.builder(
        itemCount: numberOfScreens,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Handle item click here
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen('Content for Screen $index'),
                ),
              );
            },
            child: ListTile(
              title: Text('Screen $index'),
            ),
          );
        },
      ),
    );
  }
}
class GeneratedScreen extends StatelessWidget {
  final int index;

  GeneratedScreen(this.index);

  @override
  Widget build(BuildContext context) {
    // Customize the content based on the index
    return ListTile(
      title: Text('Screen $index'),
      subtitle: Text('This is unique content for Screen $index'),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String content;

  DetailScreen(this.content);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: Center(
        child: Text(content),
      ),
    );
  }
}
