import 'package:flutter/material.dart';

class Q3Screen extends StatefulWidget {
  @override
  State<Q3Screen> createState() => _Q3ScreenState();
}

class _Q3ScreenState extends State<Q3Screen> {

  // List of items
  List<String> items = [];

  // Function to add item
  void addItem() {
    setState(() {
      items.add("Item ${items.length + 1}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item List"),
      ),

      // ListView
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        child: Icon(Icons.add),
      ),
    );
  }
}
