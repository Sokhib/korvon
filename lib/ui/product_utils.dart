import 'package:flutter/material.dart';
import 'package:korvon/models/companies.dart';
import 'package:korvon/ui/product_details.dart';

class Product extends StatefulWidget {
  ProductState createState() => ProductState();
}

class ProductState extends State<Product> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetails()));
      },
      child: Container(
        margin: EdgeInsets.all(3),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(companyList.company[0].image),
                Container(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.only(top: 5),
                    height: 35,
                    width: 35,
                    child: RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          isFav = !isFav;
                        });
                      },
                      child: Icon(
                        isFav ? Icons.favorite : Icons.favorite_border,
                        color: Colors.red,
                        size: 15,
                      ),
                      shape: new CircleBorder(),
                      elevation: 1.0,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Nike Man Black T-shirt",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.red, size: 15),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 15,
                        ),
                        Icon(Icons.star, color: Colors.red, size: 15),
                        Icon(Icons.star, color: Colors.red, size: 15),
                        Icon(Icons.star, color: Colors.red, size: 15),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "(101)",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "89.95TL",
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 14),
                            ),
                            Text(
                              "44.9TL",
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 14),
                            )
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "10% off in basket",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    "40.46 TL",
                                    style: TextStyle(color: Colors.orange),
                                  )
                                ],
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
