import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobrepra/Views/buyers/nav_screens/cart_screen.dart';
import 'package:mobrepra/Views/buyers/nav_screens/category_screen.dart';
import 'package:mobrepra/Views/buyers/nav_screens/favourite_screen.dart';
import 'package:mobrepra/Views/buyers/nav_screens/home_screen.dart';
import 'package:mobrepra/Views/buyers/nav_screens/search_screen.dart';
import 'package:mobrepra/Views/buyers/nav_screens/store_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;
  List<Widget> _pages = [
    HomeScreen(),
    StoreScreen(),
    FavouriteScreen(),
    CategoryScreen(),
    CartScreen(),
    SearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.amber.shade900,
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'icons/store.svg',
                width: 30,
                height: 30,
              ),
              label: "Store"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                '/icons/Favorite.svg',
                width: 30,
                height: 30,
              ),
              label: "Favourite"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'icons/category.svg',
                width: 30,
                height: 30,
              ),
              label: "Category"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'icons/cart.svg',
                width: 30,
                height: 30,
              ),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'icons/search.svg',
                width: 30,
                height: 30,
              ),
              label: "Search"),
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}
