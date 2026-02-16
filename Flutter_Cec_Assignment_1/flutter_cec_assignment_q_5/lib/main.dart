// Q5. Create a Flutter app with two screens to add books and view the
// book list.
// Screen 1: Add Book
// · TextField for Book Title and Author Name· Add Book button - On button presses -> If both fields are not empty
// → add book to list and go to View screen
// Screen 2: View Books
// · AppBar title: “My Books”
// · Display books using ListView
// · Each row shows: Book Title, Author Name

import 'package:flutter/material.dart';
import 'q5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddBookScreen(),
    );
  }
}
