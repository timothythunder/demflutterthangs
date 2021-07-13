//the profile page

import 'main.dart';
import 'reusable_products.dart';
import 'package:flutter/material.dart';
import 'main_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int pageNum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 65,
            color: Color.fromRGBO(77, 161, 122, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: Icon(
                    Icons.perm_identity,
                    size: 55,
                    color: Color.fromRGBO(8, 80, 77, 1),
                  ),
                ),
                Text(
                  'User_name',
                  style: TextStyle(
                    fontSize: 35,
                    color: Color.fromRGBO(8, 80, 77, 1),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
