import 'package:flutter/material.dart';
import 'product_item_body.dart';
import 'package:dickies_project/data/model/productmodel.dart';
import 'package:dickies_project/data/data/productdata.dart';

class ProductItemList extends StatelessWidget {
  final List<ProductModel>? products;

  ProductItemList({required this.products});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: products != null && products!.isNotEmpty
          ? GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Set the number of columns
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemCount: products!.length,
              itemBuilder: (context, index) {
                ProductModel product = products![index];
                return ProductItemBody(
                  imageUrl: product.img!,
                  productName: product.name!,
                  price: product.price!.toDouble(),
                  cateName: product.catName!,
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}