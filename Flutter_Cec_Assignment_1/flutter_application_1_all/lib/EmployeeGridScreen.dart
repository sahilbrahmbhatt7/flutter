import 'package:flutter/material.dart';

class EmployeeGridScreen extends StatelessWidget {
  final List<Map<String, String>> employees = [
    {
      "name": "Rahul",
      "department": "IT",
      "image": "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"
    },
    {
      "name": "Priya",
      "department": "HR",
      "image": "https://cdn-icons-png.flaticon.com/512/3135/3135789.png"
    },
    {
      "name": "Amit",
      "department": "Finance",
      "image": "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"
    },
    {
      "name": "Neha",
      "department": "Marketing",
      "image": "https://cdn-icons-png.flaticon.com/512/3135/3135789.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employees"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: employees.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(employees[index]["name"]!)),
                );
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(employees[index]["image"]!),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        employees[index]["name"]!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        employees[index]["department"]!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}