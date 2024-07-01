import 'package:flutter/material.dart';

class ChiTietDonHang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi Tiết Đơn Hàng'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Địa Chỉ Giao Hàng:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 8),
            Text('Trần Hoài An'),
            Text('+84 90 456 789'),
            Text('828 Sư Vạn Hạnh, Phường 13, Quận 10, TP. HCM'),
            SizedBox(height: 16),
            Text(
              'Phương Thức Thanh Toán:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.attach_money),
                SizedBox(width: 8),
                Text('Tiền Mặt'),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  DonHangItem(),
                  DonHangItem(),
                  DonHangItem(),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('ĐÁNH GIÁ'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('MUA LẠI'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DonHangItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(
              'https://via.placeholder.com/50',
              width: 50,
              height: 50,
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Áo Sơ Mi Tay Ngắn'),
                Text('Màu Nâu'),
                Text('Giá: \$35.25'),
              ],
            ),
            Spacer(),
            Text('x1'),
          ],
        ),
      ),
    );
  }
}
