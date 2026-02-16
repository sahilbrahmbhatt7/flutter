// Q7. Display employees in a grid layout.
// Each grid item shows:
// · Circular profile image
// · Employee name
// · Department
// On tap: Show employee Name in a SnackBar


import 'package:flutter/material.dart';
import 'q7.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Q7Screen(),
    );
  }
}
