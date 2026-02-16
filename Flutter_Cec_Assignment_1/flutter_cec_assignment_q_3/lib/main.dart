// Q3. Develop a Flutter application screen that displays a list of items
// using ListView. The screen must include a Floating Action Button which,
// when pressed, dynamically adds a new item to the list and updates the
// UI immediately.
// 1. ​ Display a list of items on the screen.
// 2. ​ Use ListView or ListView.builder to show the list.
// 3. ​ Add a FloatingActionButton at the bottom-right corner.
// 4. ​ On clicking the FAB: A new item should be added to the list.

import 'package:flutter/material.dart';
import 'q3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Q3Screen(),
    );
  }
}
