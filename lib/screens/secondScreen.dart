import 'package:flutter/material.dart';
import '../main.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: int.parse(numController.text) % 3 == 0
          ? Colors.green
          : int.parse(numController.text) % 3 == 1 ? Colors.blue : Colors.red,
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(numController.text),
        ),
      ),
    );
  }
}
