import 'package:flutter/material.dart';
import 'package:dickies_shop_clothes/screens/Cart/item_cart.dart';

class CartProduct extends StatefulWidget {
  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  Widget build(BuildContext context) {
    // Add your widget implementation here
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          children: <Widget>[
            ...createList().map((item) {
              return Column(
                children: [
                  GestureDetector(
                    child: ItemCart(),
                  ),
                  SizedBox(height: 5), // Làm cho mỗi item cách nhau 5
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

List<String> createList() {
  List<String> items = List.generate(10, (index) => 'Item ${index + 1}');
  return items;
}
