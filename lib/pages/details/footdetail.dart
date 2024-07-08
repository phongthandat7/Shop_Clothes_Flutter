import 'package:dickies_project/conf/conf.dart';
import 'package:flutter/material.dart';
import 'package:dickies_project/data/model/productmodel.dart';

class FootDetail extends StatelessWidget {
  final Function(double) onPriceSelected;
  final Function(int) onQuantitySelected;
  final Function(String) onSizeSelected;

  const FootDetail({
    Key? key,
    required this.onPriceSelected,
    required this.onQuantitySelected,
    required this.onSizeSelected,
  }) : super(key: key);

  @override
   Widget build(BuildContext context) {
    int quantity = 1;
    double price = 24.99;

    return Container(
      //width: 400,
      height: 160,
      decoration: BoxDecoration(
        color: Color(0xFF11456E),
        //borderRadius: BorderRadius.only(
          //bottomLeft: Radius.circular(20),
          //bottomRight: Radius.circular(20),
        //),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$$price',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '\$27.99',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      // Logic xử lý khi nút "-" được nhấn
                      if (quantity > 0) {
                        quantity--; // Giảm số lượng
                      }
                      onQuantitySelected(quantity);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF205B8A),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    '$quantity',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 12),
                  InkWell(
                    onTap: () {
                      // Logic xử lý khi nút "+" được nhấn
                      quantity++; // Tăng số lượng
                      onQuantitySelected(quantity);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF205B8A),
                        
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
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Logic xử lý khi nút chọn size được nhấn
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF205B8A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 2,
                ),
                child: Container(
                  width: 100,
                  height: 52,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Size M',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  // Logic xử lý khi nút add to cart được nhấn
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF205B8A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 2,
                ),
                child: Container(
                  width: 150,
                  height: 52,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Add To Cart',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                            //size: 20,
                          ),
                    ],
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