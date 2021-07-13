import 'dart:io';

import 'package:flutter/material.dart';

String appBarTitle = 'potato';

class ReusableSegment1 extends StatelessWidget {
  ReusableSegment1(
      {@required this.segmentText,
      this.segmentColor,
      this.segmentImage,
      this.imageVisibility,
      this.segmentFunction,
      this.fontColor});

  final String segmentText;
  final Color segmentColor;
  final String segmentImage;
  final bool imageVisibility;
  final segmentFunction;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    if (segmentImage == null) {
      // ignore: unnecessary_statements
      imageVisibility == false;
    }
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/PageOfProducts');
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
                color: fontColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
