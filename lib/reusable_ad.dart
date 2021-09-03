import 'package:flutter/material.dart';
import 'reusable_products.dart';

String globalAdName = 'Joe mama';
String globalAdUrl = 'just blank for now';
String globalAdImage = 'Also Jusat starting blank';

class ReusableAdSegment extends StatelessWidget {
  ReusableAdSegment({
    this.adName,
    this.adVisibility,
    this.adImage,
    this.hasBeenWatched,
    this.adUrl,
    // these are just in case i want to go to the product screen from the ad page
    this.productName,
    this.productPrice,
    this.productImageURL,
  });
  final String adName;
  final bool adVisibility;
  final bool hasBeenWatched;
  final String adUrl;
  // may or may not use this
  final String adImage;
  // these are just in case i want to go to the product screen from the ad page
  final String productName;
  final int productPrice;
  final String productImageURL;

  // Icons.circle_outlined

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: adVisibility,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/AdWatchingPage');
          globalAdName = adName;
          globalAdUrl = adUrl;
          globalAdImage = adImage;
          // these are just in case i want to go to the product screen from the ad page
          globalProductPrice = productPrice;
          globalProductName = productName;
          globalProductImageUrl = productImageURL;
        },
        child: Container(
          alignment: Alignment.center,
          height: 100,
          decoration: BoxDecoration(
            color: Color.fromRGBO(77, 161, 122, 1),
            border: Border.all(
              color: Color.fromRGBO(8, 80, 77, 1),
              width: 1.2,
            ),
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(right: 25.0, left: 35),
                child: Icon(
                  Icons.circle_outlined,
                  color: Color.fromRGBO(8, 80, 77, 1),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      adName,
                      style: TextStyle(
                        color: Color.fromRGBO(8, 80, 77, 1),
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//margin: const EdgeInsets.only(right: 60.0),
//fontSize: 28,
//fontSize: 28,
