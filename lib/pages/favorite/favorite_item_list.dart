import 'package:flutter/material.dart';
import 'favorite_item_body.dart';
import 'package:dickies_project/data/model/productmodel.dart';
import 'package:dickies_project/data/data/productdata.dart';

class FavoriteItemList extends StatelessWidget {
  final List<ProductModel>? products;

  FavoriteItemList({required this.products});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: products != null && products!.isNotEmpty
          ? ListView.separated(
              itemCount: products!.length,
              itemBuilder: (context, index) {
                ProductModel product = products![index];
                return FavoriteItemBody(
                  imageUrl: product.img!,
                  title: product.name!,
                  price: product.price!.toDouble(),
                  Prostatus: product.status!,
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 16.0),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}