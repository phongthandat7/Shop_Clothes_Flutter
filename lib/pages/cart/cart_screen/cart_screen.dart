import 'package:dickies_project/pages/cart/Cart/item_cart.dart';
import 'package:dickies_project/pages/cart/Cart/payment_result.dart';
import 'package:dickies_project/pages/cart/Cart/discount_banner.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          child: DiscountBanner(),
        ),
        // SizedBox(height: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SingleChildScrollView(
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
          ),
        ),
        Container(
          height: 120,
          child: PaymentWidget(),
        ),
      ],
    );
  }
}

List<String> createList() {
  List<String> items = List.generate(10, (index) => 'Item ${index + 1}');
  return items;
}
