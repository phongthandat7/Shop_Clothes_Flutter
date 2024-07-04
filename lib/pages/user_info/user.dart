import 'package:flutter/material.dart';

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hồ Sơ Người Dùng',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const UserProfile(),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('USER')),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'C:/sdk/DICKIES_FLUTTER-main/assets/images/avatar.png',
              height: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'C:/sdk/DICKIES_FLUTTER-main/assets/images/avatar.png', // Thay thế bằng URL ảnh của bạn
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('THÔNG TIN CÁ NHÂN'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Điều hướng đến Màn hình Thông tin Cá nhân
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('LỊCH SỬ MUA HÀNG'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Điều hướng đến Màn hình Lịch sử Mua hàng
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}
