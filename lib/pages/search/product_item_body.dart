import 'package:dickies_project/conf/conf.dart';
import 'package:flutter/material.dart';

class ProductItemBody extends StatelessWidget {
  final String productName;
  final double price;
  final String imageUrl;
  final String cateName;

  const ProductItemBody({
    Key? key,
    required this.productName,
    required this.price,
    required this.imageUrl,
    required this.cateName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      height: 203,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFFF6F6F6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 135,
                  height: 135,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 33,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 15,
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '\$${price.toStringAsFixed(2)}',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 3),
                      SizedBox(
                        width: 127,
                        child: Text(
                          productName,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
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