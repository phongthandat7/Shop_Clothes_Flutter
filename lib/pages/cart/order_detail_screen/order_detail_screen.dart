import 'package:dickies_project/pages/cart/cart_screen/cart_screen.dart';
import 'package:dickies_project/pages/cart/cart_widget.dart';

import 'cart_product.dart';
import 'package:flutter/material.dart';
import 'customer_information.dart';
import 'voucher_section.dart';
import 'payment_method_section.dart';
import 'payment_details.dart';
import 'order_summary.dart';

class OrderDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ORDER DETAILS'),
        centerTitle: true, // make the text center of screen
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView(
                shrinkWrap:
                    true, // add this line to make the ListView not scrollable
                children: [
                  CustomerInformation(),
                  SizedBox(height: 20),
                  CartProduct(),
                  SizedBox(height: 20),
                  VoucherSection(),
                  SizedBox(height: 10),
                  PaymentMethodSection(),
                  SizedBox(height: 20),
                  PaymentDetails(), // add fixed OrderSummary()
                ],
              ),
            ),
          ),
          Container(
            child: OrderSummary(),
            height: 130,
          ),
        ],
      ),
    );
  }
}
