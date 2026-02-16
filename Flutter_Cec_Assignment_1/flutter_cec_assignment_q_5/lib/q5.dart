import 'package:flutter/material.dart';

// Global list to store books
List<Map<String, String>> books = [];

/// 🔹 Screen 1: Add Book
class AddBookScreen extends StatefulWidget {
  const AddBookScreen({super.key});

  @override
  State<AddBookScreen> createState() => _AddBookScreenState();
}

class _AddBookScreenState extends State<AddBookScreen> {

  TextEditingController titleController = TextEditingController();
  TextEditingController authorController = TextEditingController();

  void addBook() {
    if (titleController.text.isNotEmpty &&
        authorController.text.isNotEmpty) {

      books.add({
        "title": titleController.text,
        "author": authorController.text,
      });

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ViewBooksScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Fill all fields")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Book"),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            /// Book Title
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "Book Title",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15),

            /// Author Name
            TextField(
              controller: authorController,
              decoration: InputDecoration(
                labelText: "Author Name",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            /// Add Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: addBook,
                child: Text("Add Book"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/// 🔹 Screen 2: View Books
class ViewBooksScreen extends StatelessWidget {
  const ViewBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Books"),
      ),

      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(books[index]["title"]!),
              subtitle: Text(books[index]["author"]!),
            ),
          );
        },
      ),
    );
  }
}
