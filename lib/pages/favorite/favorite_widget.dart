import 'package:flutter/material.dart';
import 'favorite_item_list.dart';
import 'package:dickies_project/data/model/productmodel.dart';
import 'package:dickies_project/data/data/productdata.dart';
import 'package:dickies_project/conf/conf.dart';
class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  List<ProductModel>? _allProducts;
  List<ProductModel>? _almostSoldOutProducts;
  bool _showAllProducts = true;

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    ReadData readData = ReadData();
    _allProducts = await readData.loadData();
    _almostSoldOutProducts = _allProducts?.where((p) => p.status == 'Almost Sold Out').toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_showAllProducts)
                  Text(
                    '${_allProducts?.length ?? 0} items',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (!_showAllProducts)
                  Text(
                    '${_almostSoldOutProducts?.length ?? 0} items',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,                   
                    ),
                  ),
              ],
            ),           
            Row(            
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [                   
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _showAllProducts = true;
                        });
                      },
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          //color: _showAllProducts ? Colors.black : Colors.grey[300],
                          border: Border.all(color: _showAllProducts ? Colors.black : Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                          child: Text(
                            'All',
                            style: lableTS.copyWith(
                              color: _showAllProducts ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _showAllProducts = false;
                        });
                      },
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          //color: !_showAllProducts ? Colors.black : Colors.grey[300],
                          border: Border.all(color: !_showAllProducts ? Colors.black : Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                          child: Text(
                            'Almost Sold Out',
                            style: lableTS.copyWith(
                              color: !_showAllProducts ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.0),           
           //SizedBox(height: 8.0),
            Expanded(
              flex: 3,
              child: FavoriteItemList(products: _showAllProducts ? _allProducts : _almostSoldOutProducts),
            ),
          ],
        ),
        
      ),
    );
  }
}
