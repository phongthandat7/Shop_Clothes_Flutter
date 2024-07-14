import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  void _login() {
    // Thêm logic đăng nhập tại đây
    print('Đăng nhập');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/logo.png'), // Hiển thị logo
          const SizedBox(height: 16.0),
          const Text(
            'Xin chào!',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 16.0),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16.0),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Tên người dùng',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16.0),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Mật khẩu',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: _login,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: const Text('Đăng nhập'),
          ),
          const SizedBox(height: 16.0),
          const Divider(),
          const Text('hoặc đăng nhập bằng'),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset('assets/facebook.png'),
                onPressed: () {
                  // Thêm logic đăng nhập bằng Facebook tại đây
                },
              ),
              const SizedBox(width: 16.0),
              IconButton(
                icon: Image.asset('assets/google.png'),
                onPressed: () {
                  // Thêm logic đăng nhập bằng Google tại đây
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
