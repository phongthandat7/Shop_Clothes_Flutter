import 'package:dickies_project/components/item.dart';
import 'package:flutter/material.dart';

class DoiVoucherPage extends StatelessWidget {
  const DoiVoucherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
              padding: EdgeInsets.only(left: 80),
              child: Text('ĐỔI COUPON',
                  style: TextStyle(fontWeight: FontWeight.w600)))),
      body: Column(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 6),
              Item(),
              Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 10),
                child: Text(
                  'Lịch sử coupon:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                '500',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 10),
                child: Text(
                  'Coupon hiện có:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                '50',
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 10),
                child: Text(
                  'Ngày hết hạn:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                '10/08/2024',
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 10),
                child: Text(
                  'Mô tả:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                'Discount 5% for all bill',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        Container(
          height: 40,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xff11456E),
          ),
          child: Center(
              child: Text(
            'ACCEPT',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          )),
        ),
      ]),
    );
  }
}
