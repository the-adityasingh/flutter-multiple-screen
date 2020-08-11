import 'package:flutter/material.dart';
import '../main.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text('DONE!', style: TextStyle(backgroundColor: Colors.white)),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(numController.text),
            ),
          ])),
    );
  }
}
