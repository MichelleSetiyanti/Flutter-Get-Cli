import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_cli/app/modules/products/controllers/products_controller.dart';

import '../controllers/product_add_controller.dart';

class ProductAddView extends GetView<ProductAddController> {
  final productC = Get.find<ProductsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductAddView'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: controller.nameC,
            decoration: InputDecoration(
              labelText: "Product Name",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: controller.priceC,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Product price",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () => productC.addProduct(
                controller.nameC.text, controller.priceC.text),
            child: Text("ADD PRODUCT"),
          ),
        ],
      ),
    );
  }
}
