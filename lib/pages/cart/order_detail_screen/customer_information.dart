import 'package:flutter/material.dart';

class CustomerInformation extends StatefulWidget {
  @override
  _CustomerInformationState createState() => _CustomerInformationState();
}

class _CustomerInformationState extends State<CustomerInformation> {
  String customerName = 'Trần Hoài An';
  String phoneNumber = '+84 90 456 789';
  String address = '828 Sư Vạn Hạnh, Phường 13, Quận 10, TP. HCM';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add functionality for on tap event here
        print('Clicked on Customer Information');
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        constraints: BoxConstraints(
            maxWidth: 400), // Đặt ràng buộc chiều rộng tối đa cho Container
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customer information:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(customerName),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 5),
                Text(phoneNumber),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 5),
                Flexible(
                  child: Text(
                    address,
                    overflow: TextOverflow
                        .ellipsis, // Tránh vượt ra ngoài biên bằng cách hiển thị dấu ba chấm khi quá dài
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
