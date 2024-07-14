import 'package:dickies_project/conf/conf.dart';
import 'package:flutter/material.dart';
import 'package:dickies_project/data/model/productmodel.dart';
import 'package:dickies_project/data/data/productdata.dart';
import 'product_item_list.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  List<ProductModel> _allProducts = [];
  List<ProductModel> _filteredProductsByName = [];
  List<ProductModel> _filteredProductsByCate = [];
  final _searchController = TextEditingController();
  bool _isSearchFocused = false;
  String? _selectedCategory;
  final List<String> _imageUrls = [
    'quangcao_1.jpg',
    'quangcao_2.jpg',
    'quangcao_3.jpg',
  ];
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadProductData();
  }

  Future<void> _loadProductData() async {
    final readData = ReadData();
    _allProducts = await readData.loadData();
    _selectedCategory =
        _allProducts.isNotEmpty ? _allProducts.first.catName : null;
    //_selectedCategory = 'MEN';
    _filteredProductsByCate = _allProducts
        .where((product) => product.catName == _selectedCategory)
        .toList();
    setState(() {});
  }

  void _filterProductsByName(String query) {
    if (query.isNotEmpty) {
      _filteredProductsByName = _allProducts.where((product) {
        return product.name!.toLowerCase().startsWith(query.toLowerCase());
      }).toList();
    } else {
      _filteredProductsByName = [];
    }
    setState(() {});
  }

  void _filterProductsByCategory(String category) {
    _selectedCategory = category;
    _filteredProductsByCate =
        _allProducts.where((product) => product.catName == category).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _searchController,
            onChanged: _filterProductsByName,
            onTap: () {
              setState(() {
                _isSearchFocused = true;
              });
            },
            onEditingComplete: () {
              setState(() {
                _isSearchFocused = false;
              });
              FocusScope.of(context).unfocus();
            },
            decoration: InputDecoration(
              hintText: 'Search products...',
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
        if (_isSearchFocused && _filteredProductsByName.isNotEmpty)
          Expanded(
            child: ListView.builder(
              itemCount: _filteredProductsByName.length,
              itemBuilder: (context, index) {
                final product = _filteredProductsByName[index];
                return ListTile(
                  title: Text(product.name!),
                  subtitle: Text('\$${product.price!.toStringAsFixed(2)}'),
                );
              },
            ),
          )
        else
          Row(
            // Phần hiển thị các nút danh mục
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _filterProductsByCategory('MEN');
                    _selectedCategory = 'MEN';
                  });
                },
                child: Container(
                  // Hiển thị nút "MEN"
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: _selectedCategory == 'MEN' ? 3.5 : 0,
                        color: _selectedCategory == 'MEN'
                            ? Colors.black
                            : Color(0xFFB2B2B2),
                      ),
                    ),
                  ),
                  child: Text(
                    'MEN',
                    style: TextStyle(
                      color: _selectedCategory == 'MEN'
                          ? Colors.black
                          : Color(0xFFB2B2B2),
                      fontWeight: _selectedCategory == 'MEN'
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _filterProductsByCategory('WOMEN');
                    _selectedCategory = 'WOMEN';
                  });
                },
                child: Container(
                  // Hiển thị nút "WOMEN"
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: _selectedCategory == 'WOMEN' ? 3.5 : 0,
                        color: _selectedCategory == 'WOMEN'
                            ? Colors.black
                            : Color(0xFFB2B2B2),
                      ),
                    ),
                  ),
                  child: Text(
                    'WOMEN',
                    style: TextStyle(
                      color: _selectedCategory == 'WOMEN'
                          ? Colors.black
                          : Color(0xFFB2B2B2),
                      fontWeight: _selectedCategory == 'WOMEN'
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ),
              // Các nút danh mục khác
            ],
          ),
        Expanded(
            child: Column(
          children: [
            for (int i = 0; i < _imageUrls.length; i++)
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/${_imageUrls[i]}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
          ],
        )),
        //       if (!_isSearchFocused && _filteredProductsByCate.isNotEmpty)
        //       Expanded(
        //         flex: 2,
        //         child: ProductItemList(products: _filteredProductsByCate)
        //         ),
        // // ...
        // // ...
        //       // Search input and other widgets...
        //       SizedBox(height: 8),
      ],
    );
  }
}
