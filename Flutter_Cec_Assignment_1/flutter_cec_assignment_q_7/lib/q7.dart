import 'package:flutter/material.dart';

class Q7Screen extends StatelessWidget {

  // Employee Data
  final List<Map<String, String>> employees = [
    {"name": "Sahil", "dept": "IT"},
    {"name": "Rahul", "dept": "HR"},
    {"name": "Amit", "dept": "Finance"},
    {"name": "Neha", "dept": "Marketing"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employees"),
      ),

      body: Padding(
        padding: EdgeInsets.all(10),

        child: GridView.builder(
          itemCount: employees.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),

          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(employees[index]["name"]!),
                  ),
                );
              },

              child: Card(
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    /// Circular Image
                    CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.person),
                    ),

                    SizedBox(height: 10),

                    /// Name
                    Text(
                      employees[index]["name"]!,
                      style: TextStyle(fontSize: 16),
                    ),

                    SizedBox(height: 5),

                    /// Department
                    Text(
                      employees[index]["dept"]!,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
