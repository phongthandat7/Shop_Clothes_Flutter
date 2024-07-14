import 'package:flutter/material.dart';

class OrderSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String totalText = 'TOTAL (tax include)';
    String currentPrice = '\$104.96';
    String originalPrice = '\$154.96';

    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white), // fix this to make dont overflowed
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(totalText),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(currentPrice,
                      style: TextStyle(color: Colors.red, fontSize: 16)),
                  Text(originalPrice,
                      style: TextStyle(decoration: TextDecoration.lineThrough)),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Add order functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(0x11, 0x45, 0x6E, 0xFF),
                padding: EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(18.0), // làm cho nút bự hơn
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Order',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Icon(Icons.arrow_forward, color: Colors.white)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
