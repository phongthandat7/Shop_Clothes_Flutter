import 'package:dickies_project/pages/cart/cart_screen/cart_screen.dart';
import 'package:flutter/material.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CartScreen(),
    );
  }
}
