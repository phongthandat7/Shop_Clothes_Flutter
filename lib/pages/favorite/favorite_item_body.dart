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
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[800]!),
        borderRadius: BorderRadius.circular(20.0),
        color: blue,
      ),
      child: Row(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
          child: Padding(
            padding: EdgeInsets.only(left:12.0,right: 12.0),
              child: Image.asset(
                urlimg + imageUrl,
                width: 155,
                fit: BoxFit.cover,
                
              ),
            ),
          ),
          //SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Text(
                    Prostatus,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                
                SizedBox(height: 8.0),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: lightblue,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Text(
                    '\$${price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8.0),
                ElevatedButton(
                      onPressed: () {
                        // Add to cart functionality
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(100, 30), // Thiết lập kích thước nút
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        backgroundColor: Colors.transparent,
                        side: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [                
                          Text(
                            'ADD TO CART',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                          
                        ],
                      ),
                    ),
                  
              ],
            ),
          ),
        ],
      ),
    );
  }
}