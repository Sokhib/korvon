import 'package:flutter/material.dart';
import 'package:korvon/models/product.dart';

class ShoppingCart extends StatefulWidget {
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                    colors: [Colors.orange[900], Colors.orange[300]],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft)),
            padding: EdgeInsets.fromLTRB(8, 30, 8, 8),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                    child: Icon(Icons.arrow_back,color: Colors.white,size: 26,),
                  ),
                ),
                SizedBox(width: 48,),
                Text(
                  'My Shopping Cart',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: listOfFavorites.product.length,
                  itemBuilder: (BuildContext context, int i) {
                    return cartItem(listOfFavorites.product[i]);
                  }),
            ),
          ),
          _productCartBottom()
        ],
      ),
    );
  }

  Widget cartItem(FavItem product) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      height: 210,
      padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  width: 150,
                  height: 150,
                  child: Image.asset(product.imageUrl)),
              Expanded(
                child: Container(
                  height: 150,
                  margin: EdgeInsets.only(left: 5),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        product.productName,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Visibility(
                        visible:
                            ( product.size != null)
                                ? true
                                : false,
                        child: Text(
                          "Size: ${product.size}",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Delivery Time: 22 - 24 August",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        product.price,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                listOfFavorites.product.remove(product);
              });
            },
            child: Container(
                padding: EdgeInsets.only(bottom: 10, right: 10),
                alignment: Alignment.bottomRight,
                child: Icon(Icons.more_horiz)),
          ),
        ],
      ),
    );
  }

  Widget _productCartBottom() {
    return Container(
      color: Colors.white,
      height: 140,
      width: double.infinity,
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Icon(
                Icons.attach_money,
                color: Colors.orange,
              )),
              Container(
                width: 250,
                height: 50,
                alignment: Alignment.center,
                child: TextField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(fontSize: 16),
                      labelText: "Enter a coupon code",
                      fillColor: Colors.white,
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                    ),
                    style: Theme.of(context).textTheme.subhead),
              ),
              Container(
                height: 40,
                width: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: RaisedButton(
                    color: Colors.white,
                    child: Icon(
                      Icons.check,
                      color: Colors.orange,
                    ),
                    onPressed: () {
                      /*Proceed to checkout*/
                    },
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.arrow_right,
                  color: Colors.orange,
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Total",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  Text(
                    "999.9USD",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  )
                ],
              ),
              Container(
                height: 40,
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: RaisedButton(
                    color: Colors.orange,
                    child: Text(
                      "Proceed to Checkout",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    onPressed: () {
                      /*Proceed to checkout*/
                    },
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
