import 'package:dickies_project/components/item.product.dart';
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
              onPressed: () {},
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
            child: ListView.builder(
              itemCount: fakeProducts.length,
              itemBuilder: (context, index) {
                return ProductItem(
                  imageUrl: fakeProducts[index].imageUrl,
                  title: fakeProducts[index].title,
                  minPrice: fakeProducts[index].minPrice,
                  maxPrice: fakeProducts[index].maxPrice,
                  colorOptions: fakeProducts[index].colorOptions,
                  isFavorite: fakeProducts[index].isFavorite,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
