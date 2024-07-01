import 'package:flutter/material.dart';

class MyPurchase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY PURCHASE'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          PurchaseItem(),
          PurchaseItem(),
          PurchaseItem(),
        ],
      ),
    );
  }
}

class PurchaseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                    Text(
                      '20/04/2024',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('SUCCESS', style: TextStyle(color: Colors.blue)),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Short Sleeve Work Shirt'),
                    Text('Brown'),
                    Text('x1'),
                    Text(
                      'Total: \$35.25',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('RATE'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('BUY AGAIN'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
