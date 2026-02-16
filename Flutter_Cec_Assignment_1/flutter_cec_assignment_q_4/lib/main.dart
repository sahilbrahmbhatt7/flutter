// Q4. Design a Flutter Login Screen with proper validation and
// background design.
// · Email input using TextFormField - Field is required and mail must be
// in valid format
// · Password input using TextFormField - Minimum 8 characters
// · Add show/hide password option
// · Submit button


import 'package:flutter/material.dart';
import 'q4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Q4Screen(),
    );
  }
}
