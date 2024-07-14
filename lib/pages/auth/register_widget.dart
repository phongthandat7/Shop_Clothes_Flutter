import 'package:flutter/material.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  void _register() {
    // Thêm logic đăng ký tại đây
    print('Đăng ký');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/logo.png'), // Thêm logo
          const SizedBox(height: 16.0),
          const Text(
            'Create your account',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 16.0),
          const TextField(
            decoration: InputDecoration(
              labelText: 'User name',
              border: OutlineInputBorder(),
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
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: _register,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: const Text('Sign Up'),
          ),
          const SizedBox(height: 16.0),
          const Divider(),
          const Text('or sign up with'),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset('assets/facebook.png'),
                onPressed: () {
                  // Thêm logic đăng ký bằng Facebook
                },
              ),
              const SizedBox(width: 16.0),
              IconButton(
                icon: Image.asset('assets/google.png'),
                onPressed: () {
                  // Thêm logic đăng ký bằng Google
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
