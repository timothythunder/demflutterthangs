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
          productAppBarTitle,
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
              productName: 'Nike LeBron 17',
              productPrice: 130,
              productImageURL:
                  'https://images.stockx.com/images/Nike-LeBron-17-Infrared-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1607673912bbbbbb',
            ),
            ReusableProductSegment(
              productVisibility: outdoorsBool,
              productName: 'Milwauke M18 Trimmer',
              productPrice: 250,
              productImageURL:
                  'https://media.suthlbr.com/products/images/18446/1666775_ep_1612208700_5.jpg',
            ),
            ReusableProductSegment(
              productVisibility: artBool,
              productName: 'Adobe illustrator 12 Month subscription',
              productPrice: 20,
              productImageURL:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm3HDkhBh1xAESUGUQgY5Zji7iJEKatlvnKUvYiIJDqDBKoAWmDSt-AXBWWmDHGesRAwg&usqp=CAU',
            )
          ],
        ),
      ),
    );
    ;
  }
}
