import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class AddressDetails extends StatefulWidget {
  _AddressDetailsState createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Address details"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Center(
                child: IconButton(
              icon: Icon(Icons.check),
              iconSize: 26,
              color: Colors.orange,
              onPressed: () {
                /*Save address details*/
              },
            )),
          )
        ],
      ),
      body: generateAddressDetail(),
    );
  }

  Widget generateAddressDetail() {
    return Container(
      color: Colors.white,
      height: 600,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(16),
                    child: Icon(
                      Icons.person,
                      color: Colors.orange,
                    )),
                Container(
                  width: 300,
                  height: 60,
                  alignment: Alignment.center,
                  child: TextField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 16),
                        labelText: "Full Name",
                        fillColor: Colors.white,
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                      ),
                      style: Theme.of(context).textTheme.subhead),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(16),
                    child: Icon(
                      Icons.phone,
                      color: Colors.orange,
                    )),
                Container(
                  width: 300,
                  height: 60,
                  alignment: Alignment.center,
                  child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 16),
                        labelText: "Phone Number",
                        fillColor: Colors.white,
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                      ),
                      style: Theme.of(context).textTheme.subhead),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(16),
                    child: Icon(
                      Icons.place,
                      color: Colors.orange,
                    )),
                Container(
                  width: 300,
                  height: 160,
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                      maxLines: 7,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 16),
                        labelText: "Address",
                        fillColor: Colors.white,
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                      ),
                      style: Theme.of(context).textTheme.subhead),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(16),
                    child: Icon(
                      Icons.location_city,
                      color: Colors.orange,
                    )),
                Container(
                  width: 300,
                  height: 60,
                  alignment: Alignment.center,
                  child: TextField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 16),
                        labelText: "Address Header",
                        fillColor: Colors.white,
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                      ),
                      style: Theme.of(context).textTheme.subhead),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 240,
                  child: OutlineButton(
                    child: Text("Delete"),
                    onPressed: () {
                      Toast.show("Delete Address", context, gravity: Toast.BOTTOM);
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
