import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'pages/cart/cart_widget.dart';
import 'pages/favorite/favorite_widget.dart';
import 'pages/home/home_widget.dart';
import 'pages/search/search_widget.dart';
import 'pages/user_info/userInfo_widget.dart';
import './conf/conf.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeWidget(),
    SearchWidget(),
    FavoriteWidget(),
    CartWidget(),
    UserInfoWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: yellow,
            elevation: 0,
            title: const Center(
                child: Text(
              'TRANG CHỦ',
              style: appBarTS,
            )),
            leading: IconButton(
              onPressed: () {
                //open menu
              },
                icon: const Icon(Icons.menu)
            ),
            actions: [
              IconButton(
                onPressed: () {
                  //go to home page
                },
                icon: Image.asset('assets/images/logo.png'),
              ),
            ],
          ),
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(_selectedIndex == 0
                      ? 'assets/vectors/uil_fire_red.svg'
                      : 'assets/vectors/uil_fire.svg'),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(_selectedIndex == 1
                      ? 'assets/vectors/search_red.svg'
                      : 'assets/vectors/search.svg'),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(_selectedIndex == 2
                      ? 'assets/vectors/heart_red.svg'
                      : 'assets/vectors/heart.svg'),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(_selectedIndex == 3
                      ? 'assets/vectors/shopping-cart_red.svg'
                      : 'assets/vectors/shopping-cart.svg'),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(_selectedIndex == 4
                      ? 'assets/vectors/user_red.svg'
                      : 'assets/vectors/user.svg'),
                  label: ''),
            ],
          ),
        ));
  }
}
