// the store page

import 'main.dart';
import 'package:flutter/material.dart';
import 'reusable_products.dart';
import 'ad_page.dart';
import 'main_page.dart';
import 'reusable_segment.dart';
import 'reusable_segment1.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  // these functions control which products can and cannot be seen.

  void recommendedVisibility() {
    setState(() {
      sportsBool = true;
      gamingBool = true;
      outdoorsBool = true;
      moviesBool = true;
      artBool = true;
      technologyBool = true;
    });
  }

  void sportsVisibility() {
    setState(() {
      sportsBool = true;
      gamingBool = false;
      outdoorsBool = false;
      moviesBool = false;
      artBool = false;
      technologyBool = false;
    });
  }

  void gamingVisibility() {
    setState(() {
      sportsBool = false;
      gamingBool = true;
      outdoorsBool = false;
      moviesBool = false;
      artBool = false;
      technologyBool = false;
    });
  }

  void outdoorsVisibility() {
    setState(() {
      sportsBool = false;
      gamingBool = false;
      outdoorsBool = true;
      moviesBool = false;
      artBool = false;
      technologyBool = false;
    });
  }

  void moviesVisibility() {
    setState(() {
      sportsBool = false;
      gamingBool = false;
      outdoorsBool = false;
      moviesBool = true;
      artBool = false;
      technologyBool = false;
    });
  }

  void artVisibility() {
    setState(() {
      sportsBool = false;
      gamingBool = false;
      outdoorsBool = false;
      moviesBool = false;
      artBool = true;
      technologyBool = false;
    });
  }

  void technologyVisibility() {
    setState(() {
      sportsBool = false;
      gamingBool = false;
      outdoorsBool = false;
      moviesBool = false;
      artBool = false;
      technologyBool = true;
    });
  }

  void otherVisibility() {
    setState(() {
      sportsBool = true;
      gamingBool = true;
      outdoorsBool = true;
      moviesBool = true;
      artBool = true;
      technologyBool = true;
    });
  }

  void cartVisibility() {
    setState(() {
      sportsBool = false;
      gamingBool = false;
      outdoorsBool = false;
      moviesBool = false;
      artBool = false;
      technologyBool = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 60,
                  //color: Colors.red,
                  child: Container(
                    padding: EdgeInsets.all(7.0),
                    color: Color.fromRGBO(77, 161, 122, 1),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          hintText: 'Search',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // this visibility is just here as a search button but i cannot figure out how to make it become active when the text field is pressed
              Visibility(
                visible: false,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.5,
                    ),
                  ),
                  width: 100,
                  height: 60,
                  child: Icon(Icons.search),
                ),
              ),
            ],
          ),
          Container(
            height: 2,
            color: Color.fromRGBO(8, 80, 77, 1),
          ),
          // this is where it should start displaying genres and be able to scroll through.
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    color: Color.fromRGBO(77, 161, 122, 1),
                    child: Text(
                      'Select Product Genre',
                      style: TextStyle(
                        color: Color.fromRGBO(8, 80, 77, 1),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ReusableSegment1(
                    segmentText: 'Cart',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                    segmentFunction: cartVisibility,
                    fontColor: Colors.white,
                  ),
                  ReusableSegment1(
                    segmentText: 'Recommended',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                    segmentFunction: recommendedVisibility,
                    fontColor: Colors.white,
                  ),
                  ReusableSegment1(
                    segmentText: 'Sports',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                    segmentFunction: sportsVisibility,
                    fontColor: Colors.white,
                  ),
                  ReusableSegment1(
                    segmentText: 'Gaming',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                    segmentFunction: gamingVisibility,
                    fontColor: Colors.white,
                  ),
                  ReusableSegment1(
                    segmentText: 'Outdoors',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                    segmentFunction: outdoorsVisibility,
                    fontColor: Colors.white,
                  ),
                  ReusableSegment1(
                    segmentText: 'Movies',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                    segmentFunction: moviesVisibility,
                    fontColor: Colors.white,
                  ),
                  ReusableSegment1(
                    segmentText: 'Art',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                    segmentFunction: artVisibility,
                    fontColor: Colors.white,
                  ),
                  ReusableSegment1(
                    segmentText: 'Technology',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                    segmentFunction: technologyVisibility,
                    fontColor: Colors.white,
                  ),
                  ReusableSegment1(
                    segmentText: 'Segment 9',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                    segmentFunction: otherVisibility,
                    fontColor: Colors.white,
                  ),
                  ReusableSegment1(
                    segmentText: 'Segment 10',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                    segmentFunction: otherVisibility,
                    fontColor: Colors.white,
                  ),
                  ReusableSegment1(
                    segmentText: 'Segment 11',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                    segmentFunction: otherVisibility,
                    fontColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
