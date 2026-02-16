import 'package:flutter/material.dart';
import 'package:flutter_application_1_all/AddBookScreen.dart';
import 'package:flutter_application_1_all/DynamicListScreen.dart';
import 'package:flutter_application_1_all/EmployeeGridScreen.dart';
import 'package:flutter_application_1_all/LoginScreen.dart';
import 'package:flutter_application_1_all/ProductCatalogScreen.dart';
import 'package:flutter_application_1_all/TodoScreen.dart';
import 'package:flutter_application_1_all/ValidationLoginScreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, dynamic>> screens = [
    {"title": "Q1 - Todo List", "screen": TodoScreen()},
    {"title": "Q2 - Login + Welcome", "screen": LoginScreen()},
    {"title": "Q3 - Dynamic List + FAB", "screen": DynamicListScreen()},
    {"title": "Q4 - Validation Login Screen", "screen": ValidationLoginScreen()},
    {"title": "Q5 - Add Book + View Books", "screen": AddBookScreen()},
    {"title": "Q6 - Product Catalog Grid", "screen": ProductCatalogScreen()},
    {"title": "Q7 - Employee Grid + SnackBar", "screen": EmployeeGridScreen()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CEC Assignment 1"),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
        itemCount: screens.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(
                screens[index]["title"],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => screens[index]["screen"]),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
