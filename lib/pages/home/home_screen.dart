import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = 'WOMEN';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DropdownButton<String>(
              value: dropdownValue,
              items: <String>['WOMEN', 'MEN', 'KIDS'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('SHIRTS'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('PANTS'),
            ),
          ],
        ),
        Expanded(
          child: Center(
            child: Text('Content goes here'),
          ),
        ),
      ],
    );
  }
}
