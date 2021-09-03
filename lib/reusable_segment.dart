import 'dart:io';

import 'package:flutter/material.dart';

String appBarTitle = 'potato';

class ReusableSegment extends StatelessWidget {
  ReusableSegment({
    @required this.segmentText,
    this.segmentColor,
    this.segmentImage,
    this.imageVisibility,
    this.segmentFunction,
  });

  final String segmentText;
  final Color segmentColor;
  final String segmentImage;
  final bool imageVisibility;
  final segmentFunction;

  @override
  Widget build(BuildContext context) {
    if (segmentImage == null) {
      // ignore: unnecessary_statements
      imageVisibility == false;
    }
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/PageOfAds');
        appBarTitle = segmentText;
        segmentFunction();
      },
      child: Container(
        alignment: Alignment.center,
        height: 85,
        decoration: BoxDecoration(
          color: segmentColor,
          border: Border.all(
            color: Colors.grey,
            width: .5,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Text(
              segmentText,
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
