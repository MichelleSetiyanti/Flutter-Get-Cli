import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(this.data);

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        data["name"],
        // productC.allProducts[index]["name"],
      ),
      subtitle: Text("Rp ${data["price"]}"),
    );
  }
}
