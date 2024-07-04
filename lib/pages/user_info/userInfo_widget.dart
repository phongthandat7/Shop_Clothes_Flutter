import 'package:dickies_project/pages/user_info/user.dart';
import 'package:flutter/material.dart';

class UserInfoWidget extends StatefulWidget {
  const UserInfoWidget({super.key});

  @override
  State<UserInfoWidget> createState() => _UserInfoWidgetState();
}

class _UserInfoWidgetState extends State<UserInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: UserProfile(),
    );
  }
}
