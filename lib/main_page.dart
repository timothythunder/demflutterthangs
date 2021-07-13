import 'package:i_hope_i_can_change_this_name/ad_page.dart';
import 'package:i_hope_i_can_change_this_name/profile_page.dart';
import 'package:i_hope_i_can_change_this_name/store_page.dart';

import 'main.dart';
import 'package:flutter/material.dart';
import 'reusable_products.dart';
import 'profile_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageNum = 1;
  void pageChanger(index) {
    setState(() {
      pageNum = index;
    });
  }

  List<Widget> ThemPages = [
    ProfilePage(),
    AdPage(),
    StorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        backgroundColor: Color.fromRGBO(8, 80, 77, 1),
      ),
      body: ThemPages[pageNum],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromRGBO(8, 80, 77, 1),
        unselectedItemColor: Color.fromRGBO(225, 225, 225, 1),
        backgroundColor: Color.fromRGBO(77, 161, 122, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_arrow_sharp,
            ),
            label: "Watch",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Shop",
          ),
        ],
        onTap: pageChanger,
        currentIndex: pageNum,
      ),
    );
  }
}
