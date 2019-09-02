import 'package:flutter/material.dart';
import 'package:korvon/models/companies.dart';
import 'package:korvon/ui/product_utils.dart';

class BrandProducts extends StatefulWidget {
  BrandProducts(this.company);

  final Company company;

  _BrandProductsState createState() => _BrandProductsState();
}

class _BrandProductsState extends State<BrandProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.company.companyName,
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              "4314 product",
              style: TextStyle(fontSize: 14.0),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.swap_vert,
                        color: Colors.orange,
                      ),
                      Text(
                        "Sort By",
                        style: TextStyle(fontSize: 16.0),
                      )
                    ],
                  ),
                ),
                VerticalDivider(
                  width: 2,
                  color: Colors.black,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.filter_list,
                        color: Colors.orange,
                      ),
                      Text(
                        "Filter",
                        style: TextStyle(fontSize: 16.0),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),
            Expanded(
              child: GridView.count(
                childAspectRatio: 0.6,
                crossAxisCount: 2,
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 5),
                children: <Widget>[
                  Product(),
                  Product(),
                  Product(),
                  Product(),
                  Product(),
                  Product(),
                  Product(),
                  Product(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
