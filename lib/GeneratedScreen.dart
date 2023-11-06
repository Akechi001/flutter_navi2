import 'package:flutter/material.dart';

import 'DynamicScreen.dart';

class InputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Routes Example'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Enter the number of screens to generate:'),
            SizedBox(height: 10),
            NumberInputField(),
          ],
        ),
      ),
    );
  }
}

class NumberInputField extends StatefulWidget {
  @override
  _NumberInputFieldState createState() => _NumberInputFieldState();
}

class _NumberInputFieldState extends State<NumberInputField> {
  final TextEditingController _controller = TextEditingController();
  int numberOfScreens = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          child: TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Number'),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            final value = int.tryParse(_controller.text);
            if (value != null && value > 0) {
              numberOfScreens = value;
              try {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DynamicScreens(numberOfScreens),
                  ),
                );
              }catch(e){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Error: Route not found'),
                  ),
                );
              }
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                  content: Text('Error: Invalid input'),
                  ),
              );
            }
          },
          child: Text('Generate'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}