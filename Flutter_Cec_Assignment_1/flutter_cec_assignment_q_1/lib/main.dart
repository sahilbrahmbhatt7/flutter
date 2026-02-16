// Q1. Create a small To-Do List screen in Flutter where users can add
// tasks and mark them as completed.
// 1. ​ AppBar title: My Todos
// 2. ​ Add Task - TextField to enter task and Add button next to it
// When the user types text and presses Add:
// · If the text is not empty, add it to the todo list and Clear the
// TextField after adding
// · If the text is empty, do nothing
// 3. ​ Todo List Display –
// · Display items using ListView
// · Each row: Checkbox + task text
// · When checked → text turns grey and shows line-through

import 'package:flutter/material.dart';
import 'todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen(),
    );
  }
}
