import 'package:flutter/material.dart';
import 'product_item_body.dart';
import 'package:dickies_project/data/model/productmodel.dart';
import 'package:dickies_project/data/data/productdata.dart';
import '../details/detail_widget.dart';

class ProductItemList extends StatelessWidget {
  final List<ProductModel>? products;

  ProductItemList({required this.products});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: products != null && products!.isNotEmpty
          ? ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products!.length,
               itemBuilder: (context, index) {
                ProductModel product = products![index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailsScreen(product: product),
                      ),
                    );
                  },
                  child: ProductItemBody(
                    imageUrl: product.img!,
                    productName: product.name!,
                    
                    price: product.price!.toDouble(),
                    cateName: product.catName!,
                  ),
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}