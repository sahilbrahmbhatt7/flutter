// Q6. Design a Product Catalog screen using GridView.
// · Display products in a 2-column GridView
// · Each product card must show: Product image, Product name and
// Price
// · Store product data using a List<Map>


import 'package:flutter/material.dart';
import 'q6.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Q6Screen(),
    );
  }
}
