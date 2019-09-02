import 'package:flutter/material.dart';
import 'package:korvon/ui/address_details.dart';
import 'package:toast/toast.dart';

class AddressInformation extends StatefulWidget {
  _AddressInformationState createState() => _AddressInformationState();
}

class _AddressInformationState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Address Information"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Center(
                child: IconButton(
              icon: Icon(Icons.add),
              iconSize: 26,
              color: Colors.orange,
              onPressed: () {
                /*Add Address*/
              },
            )),
          )
        ],
      ),
      body: _listOfAddresses(),
    );
  }

  Widget _listOfAddresses() {
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
                  return _addressItem(/*List of Addresses*/);
                }),
          ),
        ),
      ],
    );
  }

  Widget _addressItem() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddressDetails()));
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
        height: 225,
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
                        Icon(
                          Icons.place,
                          color: Colors.orange,
                        ),
                        Text(
                          "Home",
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
                  "Sokhibdzhon Saidmuratov",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 16),
                )),
            Container(
                margin: EdgeInsets.only(bottom: 8),
                child: Text(
                  "+90 (505) 09 52 693",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 16),
                )),
            Container(
                margin: EdgeInsets.only(bottom: 8),
                child: Text(
                  "Sisli / Istanbul",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 16),
                )),
            Container(
                margin: EdgeInsets.only(bottom: 8),
                child: Text(
                  "Sehit Er Cihan Namli caddesi Catpinar Apt No:53 daire:5",
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
