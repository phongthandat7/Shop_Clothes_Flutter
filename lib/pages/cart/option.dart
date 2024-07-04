import 'package:flutter/material.dart';

class PopupMenuOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert, color: Colors.white),
      onSelected: (String result) {
        print('Selected: $result');
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'Edit',
          child: Text('Sửa'),
        ),
        const PopupMenuItem<String>(
          value: 'Delete',
          child: Text('Xóa'),
        ),
      ],
    );
  }
}
