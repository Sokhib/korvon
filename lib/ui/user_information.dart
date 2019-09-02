import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class UserInformation extends StatefulWidget {
  _UserInformationState createState() => _UserInformationState();
}

class _UserInformationState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Title(
          color: Colors.black,
          child: Text('User Information'),
        ),
      ),
      body: createUserInfoFields(),
    );
  }

  Widget createUserInfoFields() {
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
                      Icons.mail,
                      color: Colors.orange,
                    )),
                Container(
                  width: 300,
                  height: 60,
                  alignment: Alignment.center,
                  child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 16),
                        labelText: "Email Address",
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
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(16),
                    child: Icon(
                      Icons.date_range,
                      color: Colors.orange,
                    )),
                Container(
                  width: 300,
                  height: 60,
                  alignment: Alignment.center,
                  child: TextField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 16),
                        labelText: "Birthday DD/MM/YYYY",
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
                      Icons.face,
                      color: Colors.orange,
                    )),
                Container(
                  width: 300,
                  height: 60,
                  alignment: Alignment.center,
                  child: TextField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 16),
                        labelText: "Gender",
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
              height: 20,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  child: OutlineButton(
                    child: Text("Save"),
                    onPressed: () {
                      Toast.show("Saved Info", context, gravity: Toast.BOTTOM);
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
