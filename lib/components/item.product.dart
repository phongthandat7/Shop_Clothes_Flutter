import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final double? minPrice;
  final double? maxPrice;
  final int? colorOptions;
  final bool? isFavorite;

  const ProductItem({
    required this.imageUrl,
    required this.title,
    required this.minPrice,
    required this.maxPrice,
    required this.colorOptions,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                imageUrl!,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Icon(
                  isFavorite == true ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite == true ? Colors.red : Colors.grey,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                for (int i = 0; i < colorOptions!; i++)
                  Container(
                    margin: EdgeInsets.only(right: 4.0),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.primaries[i % Colors.primaries.length],
                      shape: BoxShape.circle,
                    ),
                  ),
                Text('+${colorOptions! - 3}'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              title!,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Text(
                  '\$$minPrice - \$$maxPrice',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(width: 140),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Dữ liệu giả
final List<ProductItem> fakeProducts = [
  ProductItem(
    imageUrl: 'https://via.placeholder.com/150',
    title: 'Product 1',
    minPrice: 10.0,
    maxPrice: 20.0,
    colorOptions: 5,
    isFavorite: true,
  ),
  ProductItem(
    imageUrl: 'https://via.placeholder.com/150',
    title: 'Product 2',
    minPrice: 15.0,
    maxPrice: 25.0,
    colorOptions: 3,
    isFavorite: false,
  ),
  ProductItem(
    imageUrl: 'https://via.placeholder.com/150',
    title: 'Product 3',
    minPrice: 20.0,
    maxPrice: 30.0,
    colorOptions: 4,
    isFavorite: true,
  ),
];
