import 'package:flutter/material.dart';

class DynamicListScreen extends StatefulWidget {
  @override
  State<DynamicListScreen> createState() => _DynamicListScreenState();
}

class _DynamicListScreenState extends State<DynamicListScreen> {
  List<String> items = ["Item 1", "Item 2", "Item 3"];
  int count = 4;

  void addItem() {
    setState(() {
      items.add("Item $count");
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic List"),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(items[index]));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.add),
      ),
    );
  }
}
