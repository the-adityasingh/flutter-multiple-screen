//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'secondScreen.dart';
import 'thirdScreen.dart';
import 'forthScreen.dart';
import '../main.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: new Container(
          padding: const EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                controller: numController,
                decoration: new InputDecoration(
                    labelText: "Enter a number",
                    icon: Icon(Icons.announcement)),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (int.parse(numController.text) % 3 == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          } else if (int.parse(numController.text) % 3 == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdScreen()),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ForthScreen()),
            );
          }
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
