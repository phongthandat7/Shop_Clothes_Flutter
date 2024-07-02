import 'package:flutter/material.dart';

class VoucherSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          // Add functionality here
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
            Icon(Icons.local_offer),
            SizedBox(
              width: 5.0,
            ),
            Text(
              'Free shipping',
              style: TextStyle(
                  color: Colors
                      .black), // Change text color to white for better visibility
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
