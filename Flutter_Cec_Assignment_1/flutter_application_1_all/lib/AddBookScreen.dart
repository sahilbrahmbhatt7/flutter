import 'package:flutter/material.dart';
import 'package:flutter_application_1_all/main.dart';

class AddBookScreen extends StatefulWidget {
  @override
  State<AddBookScreen> createState() => _AddBookScreenState();
}

class _AddBookScreenState extends State<AddBookScreen> {
  final titleController = TextEditingController();
  final authorController = TextEditingController();

  void addBook() {
    String title = titleController.text.trim();
    String author = authorController.text.trim();

    if (title.isNotEmpty && author.isNotEmpty) {
      globalBooks.add({"title": title, "author": author});
      titleController.clear();
      authorController.clear();

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ViewBooksScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Book"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: "Book Title",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: authorController,
              decoration: const InputDecoration(
                labelText: "Author Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: addBook,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                child: const Text("Add Book"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ViewBooksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Books"),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
        itemCount: globalBooks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(globalBooks[index]["title"]!),
            subtitle: Text("Author: ${globalBooks[index]["author"]}"),
          );
        },
      ),
    );
  }
}
