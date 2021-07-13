// This is the screen that appears when you pick a genre. this one is for videos.

import 'package:flutter/material.dart';
import 'main_page.dart';
import 'ad_page.dart';
import 'reusable_segment.dart';
import 'package:video_player/video_player.dart';

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
        color: Colors.blueGrey,
        child: Column(
          children: <Widget>[Container()],
        ),
      ),
    );
  }
}
