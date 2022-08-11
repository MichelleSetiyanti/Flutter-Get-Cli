import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_cli/app/routes/app_pages.dart';

import '../controllers/products_controller.dart';
import './product_item_view.dart';

class ProductsView extends GetView<ProductsController> {
  // final ProductsController productC = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductsView'),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView.builder(
          itemBuilder: (context, index) => ProductItem(
            controller.allProducts[index],
          ),
          itemCount: controller.allProducts.length,
          // itemCount: productC.allProducts.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.PRODUCT_ADD),
        child: Icon(Icons.add),
      ),
    );
  }
}
