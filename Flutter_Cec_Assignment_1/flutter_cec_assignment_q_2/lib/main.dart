// Q2. Create a Flutter app with two screens: Login and Welcome.
// Screen 1: Login
// · Use a TextFormField for Email and Password
// · Add a Checkbox labeled “Remember me”· Add a large indigo backroundcolor “Login” button
// · If both email and password are not empty → navigate to Welcome
// screen
// · If any field is empty → show SnackBar “Fill both fields”
// Screen 2: Welcome
// · AppBar title: “Welcome”
// · Display big text: “Hello, User!”


import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
