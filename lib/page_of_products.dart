// This is the screen that appears when you pick a genre. this one is for Products.
import 'package:flutter/material.dart';
import 'package:i_hope_i_can_change_this_name/reusable_products.dart';
import 'reusable_segment1.dart';
import 'reusable_products.dart';
import 'dart:async';

class PageOfProducts extends StatefulWidget {
  @override
  _PageOfProductsState createState() => _PageOfProductsState();
}

class _PageOfProductsState extends State<PageOfProducts> {
  // this function will control which function is called to deice product visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: TextStyle(fontSize: 25),
        ),
        toolbarHeight: 50,
        backgroundColor: Color.fromRGBO(8, 80, 77, 1),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            ReusableProductSegment(
              productVisibility: technologyBool,
              productName: 'One Wheel',
              productPrice: 500,
              productImageURL:
                  'https://images.squarespace-cdn.com/content/v1/55bc6f9de4b0331474c0d4a2/1529959982938-H2XYT222AA2BKSDUDW3I/Onewheel_XR2.jpg?format=500w',
            ),
            ReusableProductSegment(
              productVisibility: gamingBool,
              productName: 'Nintendo Switch',
              productPrice: 300,
              productImageURL:
                  'https://images-na.ssl-images-amazon.com/images/I/61-PblYntsL._AC_SL1500_.jpg',
            ),
            ReusableProductSegment(
              productVisibility: sportsBool,
              productName: 'Nike Football',
              productPrice: 40,
              productImageURL:
                  'https://images-na.ssl-images-amazon.com/images/I/91VfO4p86nL._AC_SL1500_.jpg',
            ),
            ReusableProductSegment(
              productVisibility: outdoorsBool,
              productName: 'Camping Multitool',
              productPrice: 15,
              productImageURL:
                  'https://images-na.ssl-images-amazon.com/images/I/61Ym9dmeljL._AC_SL1500_.jpg',
            ),
            ReusableProductSegment(
              productVisibility: artBool,
              productName: 'Paintbrush Set',
              productPrice: 15,
              productImageURL:
                  'https://images-na.ssl-images-amazon.com/images/I/81f9JhZ1V-S._AC_SL1500_.jpg',
            )
          ],
        ),
      ),
    );
    ;
  }
}
