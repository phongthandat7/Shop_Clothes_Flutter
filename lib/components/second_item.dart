import 'package:flutter/material.dart';

class SecondItem extends StatelessWidget {
  const SecondItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 6, horizontal: 14),
        decoration: BoxDecoration(
          color: Color(0xffFFCF2A),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          children: [
            Image.asset('assets/images/dickies.png'),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('DISCOUNT 5%', style: TextStyle(fontSize: 20)),
                Text(
                  '50 coupon',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w200),
                )
              ],
            )
          ],
        ));
  }
}
