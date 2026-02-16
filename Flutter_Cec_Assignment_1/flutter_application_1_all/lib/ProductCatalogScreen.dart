import 'package:flutter/material.dart';

class ProductCatalogScreen extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      "name": "Laptop",
      "price": 55000,
      "image": "https://cdn-icons-png.flaticon.com/512/3437/3437364.png"
    },
    {
      "name": "Mobile",
      "price": 25000,
      "image": "https://cdn-icons-png.flaticon.com/512/1060/1060272.png"
    },
    {
      "name": "Headphones",
      "price": 2000,
      "image": "https://cdn-icons-png.flaticon.com/512/1048/1048943.png"
    },
    {
      "name": "Camera",
      "price": 35000,
      "image": "https://cdn-icons-png.flaticon.com/512/685/685655.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Catalog"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        products[index]["image"],
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      products[index]["name"],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "₹${products[index]["price"]}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    )
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