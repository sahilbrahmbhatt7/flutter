import 'package:flutter/material.dart';

class Q6Screen extends StatelessWidget {

  // Product Data (List<Map>)
  final List<Map<String, dynamic>> products = [
    {
      "name": "Phone",
      "price": 20000,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Laptop",
      "price": 50000,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Headphones",
      "price": 3000,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Watch",
      "price": 2500,
      "image": "https://via.placeholder.com/150"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Catalog"),
      ),

      body: Padding(
        padding: EdgeInsets.all(10),

        child: GridView.builder(
          itemCount: products.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2-column Grid
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),

          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  /// Product Image
                  Image.network(
                    products[index]["image"],
                    height: 80,
                  ),

                  SizedBox(height: 10),

                  /// Product Name
                  Text(
                    products[index]["name"],
                    style: TextStyle(fontSize: 16),
                  ),

                  SizedBox(height: 5),

                  /// Price
                  Text(
                    "₹${products[index]["price"]}",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
