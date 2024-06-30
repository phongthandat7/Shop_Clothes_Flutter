import 'package:dickies_project/pages/chinhsachhotro/chinhsach_page.dart';
import 'package:flutter/material.dart';

class HotroPage extends StatelessWidget {
  const HotroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
              padding: EdgeInsets.only(left: 80),
              child: Text('HỖ TRỢ',
                  style: TextStyle(fontWeight: FontWeight.w600)))),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
          child: Column(children: [
            SizedBox(width: 4),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ChinhSachPage()));
                },
                child: HotroItem(title: 'Chính sách hỗ trợ')),
            HotroItem(title: 'Làm thế nào lấy mã giảm giá?'),
            HotroItem(title: 'Cách thức đặt hàng'),
          ]),
        ),
      )),
    );
  }
}

class HotroItem extends StatelessWidget {
  final String title;

  const HotroItem({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 54,
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 0.50, color: Color(0xFFBDBDBD)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 24,
                  height: 24,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Image.asset('assets/images/shield.png')),
              const SizedBox(width: 20),
              SizedBox(
                height: 24,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
