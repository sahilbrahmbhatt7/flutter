import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final TextEditingController taskController = TextEditingController();
  List<Map<String, dynamic>> todos = [];

  void addTask() {
    String task = taskController.text.trim();
    if (task.isNotEmpty) {
      setState(() {
        todos.add({"task": task, "completed": false});
      });
      taskController.clear();
    }
  }

  void toggleTask(int index, bool? value) {
    setState(() {
      todos[index]["completed"] = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Todos"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: taskController,
                    decoration: const InputDecoration(
                      hintText: "Enter Task",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: addTask,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  ),
                  child: const Text("Add"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Checkbox(
                      value: todos[index]["completed"],
                      onChanged: (value) => toggleTask(index, value),
                    ),
                    title: Text(
                      todos[index]["task"],
                      style: TextStyle(
                        color: todos[index]["completed"] ? Colors.grey : Colors.black,
                        decoration: todos[index]["completed"]
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}