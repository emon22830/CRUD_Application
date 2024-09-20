import 'package:crud_application/screen/add_new_product_screen.dart';
import 'package:flutter/material.dart';

import '../widget/product_item.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.separated(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ProductItem();
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 16,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return AddNewProductScreen();
            }),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
