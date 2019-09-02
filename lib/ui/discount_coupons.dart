import 'package:flutter/material.dart';

class DiscountCoupons extends StatefulWidget {
  _DiscountCouponsState createState() => _DiscountCouponsState();
}

class _DiscountCouponsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Discount Coupons"),
      ),
      body: _generateDiscountCoupons(),
    );
  }

  Widget _generateDiscountCoupons() {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder: (BuildContext context, int i) {
                  return _couponItem(/*list of coupons*/);
                }),
          ),
        ),
      ],
    );
  }

  Widget _couponItem() {
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
            padding: EdgeInsets.all(8),
            child: Text("Computer & Office Coupon"),
          ), Divider(
            height: 1,
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text("Activation Date: 01.08.2019"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text("Valid Through: 01.09.2019"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text("Minimum Limit: \$100"),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("\$15",style: TextStyle(
                        fontSize: 25,
                      ),),
                      RaisedButton(
                        splashColor: Colors.green,
                        elevation: 4.0,
                        color: Colors.orange,
                        padding: EdgeInsets.all(5),
                        child: Text("Products",style: TextStyle(color: Colors.white),),
                        onPressed: (){
                          /*Go to products*/
                        },
                      )
                    ],
                ),
              )
            ],
          ),
          Divider(height: 1,color: Colors.black,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("Coupon code: 932DFHS1"),
          )

        ],
      ),
    );
  }
}
