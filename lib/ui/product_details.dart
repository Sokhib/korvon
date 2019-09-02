import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProductDetails extends StatefulWidget {
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State {
  List imgList = [
    "assets/images/zara.png",
    "assets/images/ua.png",
    "assets/images/adidas.png",
    "assets/images/nike.png",
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; ++i) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  bool isFav = false;
  bool _onSizeSelected = false;
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  int _current = 0;
  int _liked = 15371;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      /*If picture contains white color on top :((*/
      body: Column(
        children: <Widget>[
          Expanded(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.white,
                  leading: IconButton(
                    color: Colors.orange,
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  pinned: this._pinned,
                  snap: this._snap,
                  floating: this._floating,
                  expandedHeight: MediaQuery.of(context).size.height / 2,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Container(
                      padding: EdgeInsets.only(top: 36),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.share,
                            color: Colors.orange,
                          ),
                          RawMaterialButton(
                            constraints:
                                BoxConstraints(minHeight: 40, minWidth: 40),
                            onPressed: () {
                              setState(() {
                                if (isFav)
                                  _liked -= 1;
                                else
                                  _liked += 1;
                                isFav = !isFav;
                              });
                            },
                            child: Icon(
                              isFav ? Icons.favorite : Icons.favorite_border,
                              color: Colors.orange,
                              size: 20,
                            ),
                            shape: new CircleBorder(),
                            elevation: 1.0,
                            fillColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    background: Stack(children: [
                      CarouselSlider(
                        height: MediaQuery.of(context).size.height / 2,
                        initialPage: 0,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        items: imgList.map((imgUrl) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                padding: EdgeInsets.all(8),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.orange),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Image.asset(
                                  imgUrl,
                                ),
                              );
                            },
                          );
                        }).toList(),
                        onPageChanged: (index) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                      Positioned(
                          top: MediaQuery.of(context).size.height / 2,
                          left: 0.0,
                          right: 0.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: map<Widget>(imgList, (index, url) {
                              return Container(
                                width: 8.0,
                                height: 8.0,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 2.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _current == index
                                        ? Colors.orange
                                        : Color.fromRGBO(0, 0, 0, 0.9)),
                              );
                            }),
                          ))
                    ]),
                  ),
                ),
                SliverFillRemaining(
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        width: double.infinity,
                        height: 145,
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "MANGO Man",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text("Man Dark Blue Sweatshirt \t 9S5844Z91"),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text("4.5"),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    SmoothStarRating(
                                      allowHalfRating: false,
                                      starCount: 5,
                                      rating: 4.5,
                                      size: 16,
                                      color: Colors.orange,
                                      borderColor: Colors.orange,
                                    ),
                                    Container(
                                      width: 1,
                                      color: Colors.black,
                                      height: 10,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                    ),
                                    Text("14 Reviews"),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (isFav)
                                            _liked -= 1;
                                          else
                                            _liked += 1;
                                          isFav = !isFav;
                                        });
                                      },
                                      child: Icon(
                                        isFav
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text("$_liked"),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Divider(
                              height: 1,
                              color: Colors.black,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                "Delivery Time: 18 - 22 August",
                                style: TextStyle(color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        width: double.infinity,
                        height: 80,
                        margin: EdgeInsets.only(top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Size"),
                                  Text(
                                    "Size Table",
                                    style: TextStyle(color: Colors.orange),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        Container(
                                          padding: EdgeInsets.all(16),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                height: 100,
                                                child: Row(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 200,
                                                      width: 100,
                                                      child: Image.asset(
                                                        imgList[0],
                                                      ),
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: <Widget>[
                                                        Text("MANGO Man"),
                                                        Text(
                                                            "Man Dark Blue Sweatshirt \t 9S5844Z91"),
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              "119.95USD",
                                                              style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .lineThrough,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 8,
                                                            ),
                                                            Text(
                                                              "59.9USD",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .orange),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 16),
                                                child: Text(
                                                  "Size",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(bottom: 16),
                                                child: Row(
                                                  children: <Widget>[
                                                    OutlineButton(
                                                      child: Text("M"),
                                                      onPressed: null,
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    OutlineButton(
                                                      color: _onSizeSelected
                                                          ? Colors.orange
                                                          : Colors.grey,
                                                      splashColor:
                                                          Colors.orange,
                                                      child: Text("L"),
                                                      onPressed: () {
                                                        setState(() {
                                                          _onSizeSelected =
                                                              !_onSizeSelected;
                                                          print(
                                                              _onSizeSelected);
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  padding: EdgeInsets.all(16),
                                                  child: Container(
                                                    height: 50,
                                                    width: 300,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      child: RaisedButton(
                                                        color: Colors.orange,
                                                        child: Text(
                                                          "Choose Size",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                          /* Select Size*/
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("Choose"),
                                    Icon(Icons.arrow_drop_down)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        child: Container(
                          color: Colors.white,
                          width: double.infinity,
                          height: 300,
                          margin: EdgeInsets.only(top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 16),
                                  child: Text(
                                    "Product Info",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 1,
                                color: Colors.black,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "•",
                                        style: TextStyle(color: Colors.orange),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Expanded(
                                          child: Text(
                                              "You have 30 days from the shipping date to return your KorvonStore purchase for FREE."))
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "•",
                                        style: TextStyle(color: Colors.orange),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Expanded(
                                          child: Text(
                                              "100% ecologically grown cotton."))
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "•",
                                        style: TextStyle(color: Colors.orange),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Expanded(
                                          child: Text(
                                        "Ecologically grown cotton is grown using practices that help us protect biodiversity...",
                                      ))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          height: 230,
                          margin: EdgeInsets.only(top: 5),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              showSimilarProducts(),
                              showSimilarProducts(),
                              showSimilarProducts(),
                              showSimilarProducts(),
                              showSimilarProducts(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          _productDetailBottom()
        ],
      ),
    );
  }

  Widget _productDetailBottom() {
    return Container(
      color: Colors.white,
      height: 70,
      width: double.infinity,
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 12),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "-50%",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  )),
              Column(
                children: <Widget>[
                  Text(
                    "119.95USD",
                    style: TextStyle(
                        color: Colors.grey[600],
                        decoration: TextDecoration.lineThrough,
                        fontSize: 14),
                  ),
                  Text(
                    "59.9USD",
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
                      "Add to Cart",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    onPressed: () {
                      /*Add product to Cart*/
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

  Widget showSimilarProducts() {
    return GestureDetector(
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              height: 200,
              width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      flex: 5,
                      child: Image.asset(
                        "assets/images/zara.png",
                        height: 150,
                        width: 250,
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "PREMIUM T-SHIRT WITH JAMES WILSON ILLUSTRATION",
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "89.95USD",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "44.9USD",
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }

}
