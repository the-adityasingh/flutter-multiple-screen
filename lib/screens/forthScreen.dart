import 'package:flutter/material.dart';
import '../main.dart';
import 'package:number_to_words_spelling/number_to_words_spelling.dart';

class ForthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Forth Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(NumberWordsSpelling.toWord(numController.text, 'en_US')),
        ),
      ),
    );
  }
}
