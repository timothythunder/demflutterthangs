import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i_hope_i_can_change_this_name/ad_main_page.dart';
import 'package:i_hope_i_can_change_this_name/ad_watching_page.dart';
import 'package:i_hope_i_can_change_this_name/main_page.dart';
import 'package:i_hope_i_can_change_this_name/page_of_ads.dart';
import 'package:i_hope_i_can_change_this_name/page_of_products.dart';
import 'package:i_hope_i_can_change_this_name/product_page.dart';
import 'package:i_hope_i_can_change_this_name/profile_page.dart';
import 'package:i_hope_i_can_change_this_name/store_main_page.dart';
import 'reusable_products.dart';

void main() => runApp(EconApp());

class EconApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color.fromRGBO(77, 161, 122, 1),
          ),
        ),
      ),
      routes: {
        '/': (context) => MainPage(),
        '/PageOfAds': (context) => PageOfAds(),
        '/PageOfProducts': (context) => PageOfProducts(),
        '/ProductPage': (context) => ProductPage(),
        '/AdWatchingPage': (context) => AdWatchingPage(),
      },
      initialRoute: '/',
    );
  }
}
