import 'package:flutter/material.dart';

class NavigationDrawerFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            accountName: Text('Shaun'),
            accountEmail: Text('500 coupons'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), // Replace with actual image URL
            ),
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text('Vouchers'),
            onTap: () {
              // Handle the tap
            },
          ),
          ListTile(
            leading: Icon(Icons.local_offer),
            title: Text('Coupon'),
            onTap: () {
              // Handle the tap
            },
          ),
          ListTile(
            leading: Icon(Icons.support),
            title: Text('Support'),
            onTap: () {
              // Handle the tap
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              // Handle the tap
            },
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Image.network(
          //     'https://via.placeholder.com/150', // Replace with actual logo URL
          //     height: 50,
          //   ),
          // ),
        ],
      ),
    );
  }
}
