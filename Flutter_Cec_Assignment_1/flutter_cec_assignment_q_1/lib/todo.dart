// q-1

import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {

  TextEditingController controller = TextEditingController();

  List<Map<String, dynamic>> todos = [];

  void addTask() {
    if (controller.text.trim().isEmpty) return;

    setState(() {
      todos.add({
        "task": controller.text.trim(),
        "done": false,
      });
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Todos"),
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [

            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: "Enter task",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: addTask,
                  child: Text("Add"),
                )
              ],
            ),

            SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: CheckboxListTile(
                      value: todos[index]["done"],
                      title: Text(
                        todos[index]["task"],
                        style: TextStyle(
                          color: todos[index]["done"]
                              ? Colors.grey
                              : Colors.black,
                          decoration: todos[index]["done"]
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          todos[index]["done"] = value!;
                        });
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
