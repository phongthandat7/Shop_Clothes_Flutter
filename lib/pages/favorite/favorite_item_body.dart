import 'package:dickies_project/conf/conf.dart';
import 'package:flutter/material.dart';

class FavoriteItemBody extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;
  final String Prostatus;

  FavoriteItemBody({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.Prostatus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160, // Giảm chiều cao của Container
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[800]!),
        borderRadius: BorderRadius.circular(15.0), // Giảm độ bo tròn
        color: blue,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0), // Giảm padding
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.white,
                      width: 1.0), // Giảm độ dày viền cho hình ảnh
                ),
                child: Image.asset(
                  urlimg + imageUrl,
                  width: 120, // Giảm chiều rộng hình ảnh
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.0), // Giảm khoảng cách
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 2.0, horizontal: 4.0), // Giảm padding
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(2.0), // Giảm độ bo tròn
                  ),
                  child: Text(
                    Prostatus,
                    style: TextStyle(
                      fontSize: 12, // Giảm kích thước chữ
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(height: 4.0), // Giảm khoảng cách
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 2.0, horizontal: 4.0), // Giảm padding
                  decoration: BoxDecoration(
                    color: lightblue,
                    borderRadius: BorderRadius.circular(2.0), // Giảm độ bo tròn
                  ),
                  child: Text(
                    '\$${price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 12, // Giảm kích thước chữ
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 4.0), // Giảm khoảng cách
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14, // Giảm kích thước chữ
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 3.0), // Giảm khoảng cách
                ElevatedButton(
                  onPressed: () {
                    // Add to cart functionality
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(60, 20), // Giảm kích thước nút
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(2.0), // Giảm độ bo tròn
                    ),
                    backgroundColor: Colors.transparent,
                    side: BorderSide(
                        color: Colors.white, width: 0.5), // Giảm độ dày viền
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'ADD TO CART',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10, // Giảm kích thước chữ
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 3.0), // Giảm khoảng cách giữa chữ và icon
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                        size: 12, // Giảm kích thước icon
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.0), // Giảm khoảng cách sau nút "ADD TO CART"
              ],
            ),
          ),
        ],
      ),
    );
  }
}
