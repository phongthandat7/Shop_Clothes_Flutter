import 'package:dickies_project/conf/conf.dart';
import 'package:flutter/material.dart';
import 'package:dickies_project/data/model/productmodel.dart';
import 'package:dickies_project/data/data/productdata.dart';
import 'footdetail.dart';

class ProductDetailsScreen extends StatefulWidget {
  final ProductModel product;

  ProductDetailsScreen({required this.product});

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  double selectedPrice = 0.0;
  int selectedQuantity = 0;
  String selectedSize = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text(
          'PRODUCT DETAILS',
          style: appBarTS,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int index = 0; index < widget.product.colors!.length; index++)
                  _buildColorItem(widget.product.colors![index]),
              ],
            ),
            SizedBox(height: 10),
            Image.asset(
              urlimg + widget.product.img!,
              width: 350,
              height: 350,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            Container(
              width: 338,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            SizedBox(width: 5),
                            Text(
                              '4.5, sold 953',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Item ID: 1574',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Short Sleeve Work Shirt',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 150,
                    child: SingleChildScrollView(
                      child: Text(
                        'Our Men\'s Short Sleeve Work Shirt has been one of our top styles since Dickies started in 1922. There\'s a reason this style has stood the test of time. This original work shirt is crafted from our wrinkle-resistant classic twill fabric, with a generous cut through the shoulders and chest that provides freedom of movement, and square hem design for easy tucking. The piece features secure chest pockets with a pencil slot and non-break buttons. The shirt has a moisture-wicking finish to help keep you cool and dry all day long. Wear it buttoned up or over a simple tee.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 0),
                child: FootDetail(
                  onPriceSelected: (price) {
                    setState(() {
                      selectedPrice = price;
                    });
                  },
                  onQuantitySelected: (quantity) {
                    setState(() {
                      selectedQuantity = quantity;
                    });
                  },
                  onSizeSelected: (size) {
                    setState(() {
                      selectedSize = size;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorItem(String colorString) {
    Color colorItem = _parseColor(colorString);
    //print('Color list string: $colorString');
    //print('Color item value: $colorItem');
    return Container(
      width: 23,
      height: 23,
      margin: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
         border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        color: colorItem.withOpacity(1.0),
      ),
    );
  }

  Color _parseColor(String colorString) {
    // Remove any leading '#' character
    if (colorString.startsWith('#')) {
      colorString = colorString.substring(1);
    }

    // Parse the color string as a hexadecimal value
    int value = int.tryParse(colorString, radix: 16) ?? 0;
    //print('Color value: $value');
    // Create and return the Color object
    return Color(value);
  }
}