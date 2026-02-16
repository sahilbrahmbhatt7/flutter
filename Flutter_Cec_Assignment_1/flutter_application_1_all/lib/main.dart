import 'package:flutter/material.dart';
import 'package:flutter_application_1_all/HOME%20SCREEN%20.dart';

void main() {
  runApp(const MyApp());
}

List<Map<String, String>> globalBooks = [];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CEC Assignment",
      home: HomeScreen(),
    );
  }
}