import 'package:flutter/material.dart';

class PaymentMethodSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          // Fix this is a button
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.black)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.credit_card),
            SizedBox(
              width: 5,
            ),
            Text(
              'Credit card',
              style: TextStyle(color: Colors.black),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }
}
