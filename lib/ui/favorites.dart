import 'package:flutter/material.dart';
import 'package:korvon/models/product.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State {
  @override
  Widget build(BuildContext context) {
    return createListOfFavorites();
  }

  Widget createListOfFavorites() {
    return Container(
      color: Colors.grey[100],
      child: Column(
        children: <Widget>[
          Container(
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                    colors: [Colors.orange[900], Colors.orange[300]],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft)),
            padding: EdgeInsets.fromLTRB(8, 30, 8, 8),
            child: Center(
              child: Text(
                'Favorites',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: listOfFavorites.product.length,
                  itemBuilder: (BuildContext context, int i) {
                    return favoriteItem(listOfFavorites.product[i]);
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Widget favoriteItem(FavItem product) {
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
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
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
}
