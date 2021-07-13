// this wil hold the product segments

import 'package:flutter/material.dart';
import 'store_page.dart';
import 'reusable_segment1.dart';
import 'page_of_products.dart';
import 'dart:async';

// these are just the other variables to transfer to the product page.
int priceProduct = 0;
String nameProduct = 'blank text';
String imageUrlProduct = 'also Blank text';

// These Variables are going to chose what things can or cannot be seen.
bool sportsBool = false;
bool gamingBool = false;
bool outdoorsBool = false;
bool moviesBool = false;
bool artBool = false;
bool technologyBool = false;

class ReusableProductSegment extends StatelessWidget {
  ReusableProductSegment({
    this.productPrice,
    this.productName,
    this.productImageURL,
    this.productDescription,
    this.productVisibility,
  });

  final int productPrice;
  final String productName;
  final String productImageURL;
  final bool productVisibility;
  // I may or may use this product description at first.
  final String productDescription;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: productVisibility,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/ProductPage');
          priceProduct = productPrice;
          nameProduct = productName;
          imageUrlProduct = productImageURL;
        },
        child: Container(
          alignment: Alignment.center,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color.fromRGBO(8, 80, 77, 1),
              width: 1.2,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                      color: Color.fromRGBO(77, 161, 122, 1),
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    '\$$productPrice',
                    style: TextStyle(
                      color: Color.fromRGBO(77, 161, 122, 1),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 3, bottom: 3),
                child: Image.network(productImageURL),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
