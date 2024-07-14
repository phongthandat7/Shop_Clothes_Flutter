import 'package:dickies_project/pages/user_info/coupons/doi_voucher/doi_voucher_page.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DoiVoucherPage()));
      },
      child: Container(
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
                  Text('ID ORER: 01524', style: TextStyle(fontSize: 20)),
                  Text('TỔNG: \$1000', style: TextStyle(fontSize: 20)),
                  Text(
                    'NGÀY: 10/06/24',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w200),
                  )
                ],
              )
            ],
          )),
    );
  }
}
