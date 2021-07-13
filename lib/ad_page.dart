// the ad watching page

import 'package:flutter/services.dart';
import 'package:i_hope_i_can_change_this_name/reusable_products.dart';
import 'package:i_hope_i_can_change_this_name/reusable_segment.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'reusable_products.dart';
import 'main_page.dart';

class AdPage extends StatefulWidget {
  @override
  _AdPageState createState() => _AdPageState();
}

class _AdPageState extends State<AdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                      'Select Ad Genre',
                      style: TextStyle(
                        color: Color.fromRGBO(8, 80, 77, 1),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ReusableSegment(
                    segmentText: 'Recommended',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                  ),
                  ReusableSegment(
                    segmentText: 'Sports',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                  ),
                  ReusableSegment(
                    segmentText: 'Gaming',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                  ),
                  ReusableSegment(
                    segmentText: 'Outdoors',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                  ),
                  ReusableSegment(
                    segmentText: 'Movies',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                  ),
                  ReusableSegment(
                    segmentText: 'Art',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                  ),
                  ReusableSegment(
                    segmentText: 'Technology',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                  ),
                  ReusableSegment(
                    segmentText: 'Segment 9',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                  ),
                  ReusableSegment(
                    segmentText: 'Segment 10',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
                  ),
                  ReusableSegment(
                    segmentText: 'Segment 11',
                    segmentColor: Color.fromRGBO(8, 80, 77, 1),
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

// if (isVisible == false) {
//         isVisible = true;
//       } else {
//         isVisible = false;
//       }
