import 'package:flutter/material.dart';

class MyCards extends StatefulWidget {
  _MyCardsState createState() => _MyCardsState();
}

class _MyCardsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("My Cards"),
      ),
      body: _generateCardList(),
    );
  }

  Widget _generateCardList() {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder: (BuildContext context, int i) {
                  return _cardItem(/*list of cards*/);
                }),
          ),
        ),
      ],
    );
  }

  Widget _cardItem() {
    return GestureDetector(
      onTap: () {
        /*Go to Card details*/
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
        height: 105,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                            height: 30,
                            width: 40,
                            child: Image.asset("assets/images/visa_card.png")),
                        Text(
                          "J.P Morgan Chase Bank",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Icon(Icons.edit),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 8),
                child: Text(
                  "4543 60** **** 2222",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 16),
                )),
          ],
        ),
      ),
    );
  }
}
