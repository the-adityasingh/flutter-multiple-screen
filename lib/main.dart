import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/secondScreen.dart';
import 'screens/Home.dart';

final numController = TextEditingController();

void main() {
  runApp(MaterialApp(
    title: 'Multiscreen App',
    home: Home(),
  ));
}
