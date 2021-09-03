import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_hope_i_can_change_this_name/reusable_products.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width - 25;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          globalProductName,
          style: TextStyle(fontSize: 25),
        ),
        toolbarHeight: 50,
        backgroundColor: Color.fromRGBO(8, 80, 77, 1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              // this one holds the time image
              margin: const EdgeInsets.only(top: 15.0, bottom: 25.0),
              width: screenWidth,
              height: screenWidth - 60,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2.5,
                ),
              ),
              alignment: Alignment.center,
              child: Image.network(globalProductImageUrl),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 23),
                // this one holds the Items price
                child: Text(
                  '\$ $globalProductPrice',
                  style: TextStyle(
                    fontSize: 42,
                    color: Color.fromRGBO(77, 161, 122, 1),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 250,
                  margin:
                      const EdgeInsets.only(top: 5.0, bottom: 10.0, left: 18),
                  child: Text(
                    'Item Description,  Item Description,    Item Description,  Item Description,  Item Description,  Item Description, ',
                    style: TextStyle(
                      color: Color.fromRGBO(77, 161, 122, 1),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(77, 161, 122, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
            margin: const EdgeInsets.only(top: 10.0),
            width: screenWidth,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Item Added To Cart'),
                    content:
                        const Text('This Item Has Been Added To Your Cart'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'Add To Cart',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromRGBO(8, 80, 77, 1),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(77, 161, 122, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
            margin: const EdgeInsets.only(
              top: 20.0,
            ),
            width: screenWidth,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Item Saved'),
                    content: const Text('This Item Has Been Saved For Later'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'Save For Later',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromRGBO(8, 80, 77, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
