import 'package:dickies_project/components/item.dart';
import 'package:dickies_project/components/second_item.dart';
import 'package:flutter/material.dart';

class VoucherPage extends StatelessWidget {
  const VoucherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
              padding: EdgeInsets.only(left: 80),
              child: Text('VOUCHER',
                  style: TextStyle(fontWeight: FontWeight.w600)))),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.center,
                child: Text('Voucher giảm giá của bạn',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, top: 10),
              child: Text(
                'Voucher giảm giá',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Item(),
            Item(),
            Item(),
            Item(),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, top: 10),
              child: Text(
                'Freeship voucher',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SecondItem(),
            SecondItem(),
          ],
        ),
      ),
    );
  }
}
