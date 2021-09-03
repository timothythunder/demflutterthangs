// This is the screen that appears when you pick a genre. this one is for videos.

import 'package:flutter/material.dart';
import 'package:i_hope_i_can_change_this_name/reusable_products.dart';
import 'main_page.dart';
import 'ad_main_page.dart';
import 'reusable_segment.dart';
import 'package:video_player/video_player.dart';
import 'reusable_ad.dart';
import 'reusable_segment1.dart';

class PageOfAds extends StatefulWidget {
  @override
  _PageOfAdsState createState() => _PageOfAdsState();
}

class _PageOfAdsState extends State<PageOfAds> {
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
            ReusableAdSegment(
              adVisibility: technologyBool,
              adName: 'One Wheel',
              adUrl: 'LyMnIwcMDBM',
              adImage:
                  'https://images.squarespace-cdn.com/content/v1/55bc6f9de4b0331474c0d4a2/1529959982938-H2XYT222AA2BKSDUDW3I/Onewheel_XR2.jpg?format=500w',
              productPrice: 500,
            ),
            ReusableAdSegment(
              adVisibility: sportsBool,
              adName: 'Nike LeBron 17',
              adImage:
                  'https://images.stockx.com/images/Nike-LeBron-17-Infrared-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1607673912',
              productPrice: 130,
              adUrl: 'lky2P_aw6nc',
            ),
            ReusableAdSegment(
              adName: 'Nintendo Switch',
              adVisibility: gamingBool,
              adUrl: '4mHq6Y7JSmg',
              adImage:
                  'https://images-na.ssl-images-amazon.com/images/I/61-PblYntsL._AC_SL1500_.jpg',
              productPrice: 300,
            ),
            ReusableAdSegment(
              adName: 'Milwauke M18 Trimmer',
              adVisibility: outdoorsBool,
              adImage:
                  'https://media.suthlbr.com/products/images/18446/1666775_ep_1612208700_5.jpg',
              productPrice: 250,
              adUrl: 'gjCiJsV7AfA',
            ),
            ReusableAdSegment(
              adName: 'Adobe illustrator 12 Month subscription',
              adVisibility: artBool,
              adImage:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm3HDkhBh1xAESUGUQgY5Zji7iJEKatlvnKUvYiIJDqDBKoAWmDSt-AXBWWmDHGesRAwg&usqp=CAU',
              productPrice: 20,
              adUrl: 'ZkLQqywiwlY',
            ),
          ],
        ),
      ),
    );
  }
}
