import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:korvon/models/product.dart';

class MyOrders extends StatefulWidget {
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Title(
          color: Colors.black,
          child: Text("My Orders"),
        ),
      ),
      body: _listOfOrders(),
    );
  }

  Widget _listOfOrders() {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: listOfFavorites.product.length,
                itemBuilder: (BuildContext context, int i) {
                  return _orderItem(listOfFavorites.product[i]);
                }),
          ),
        ),
      ],
    );
  }

  Widget _orderItem(FavItem product) {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
      height: 225,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
          padding: EdgeInsets.only(bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "20 June 2019",
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  "Order #331232",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              /* GOTO ORDER DETAILS PAGE*/
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(
                  Icons.arrow_right,
                  size: 12,
                  color: Colors.orange,
                ),
                Text(
                  "Details",
                  style: TextStyle(color: Colors.orange, fontSize: 12),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                "Total: ",
                style: TextStyle(fontSize: 12),
              ),
              Container(
              padding: EdgeInsets.fromLTRB(10, 8, 8, 8),
                child: Text(
                  product.price,
                  style: TextStyle(fontSize: 12, color: Colors.orange),
                ),
              ),
            ],
          ),

          Divider(
            height: 1,
            color: Colors.black,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 8, 8, 8),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.done,
                  size: 12,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Delivered",
                  style: TextStyle(color: Colors.green, fontSize: 12),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            width: 100,
            child: ListView(
              children: <Widget>[Image.asset(product.imageUrl)],
            ),
          )
        ],
      ),
    );
  }
}
