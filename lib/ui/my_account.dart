import 'package:flutter/material.dart';

import 'account_settings.dart';
import 'discount_coupons.dart';
import 'my_orders.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State {
  @override
  Widget build(BuildContext context) {
    return createListOfFavorites();
  }

  Widget createListOfFavorites() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              /*gradient: LinearGradient(
                    colors: [Colors.orange[900], Colors.orange[300]],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft)*/
            ),
            padding: EdgeInsets.fromLTRB(8, 30, 8, 0),
            child: Center(
              child: Text(
                'Welcome',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ListView(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyOrders()));
                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.beach_access),
                          title: Text('My Orders'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccountSettings()));
                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.settings),
                          title: Text('Account Settings'),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.notifications),
                        title: Text('Notifications'),
                      ),
                    ),
                    GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DiscountCoupons()));
                    },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.adb),
                          title: Text('Discount Coupons'),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.help),
                        title: Text('Help'),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
