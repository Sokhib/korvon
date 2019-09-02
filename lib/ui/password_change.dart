import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class PasswordChange extends StatefulWidget{
  _PasswordChangeState createState()=>_PasswordChangeState();
}
class _PasswordChangeState extends State{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Password Change"),
      ),
      body: newPasswordFields(),
    );
  }
  Widget newPasswordFields() {
    return Container(
      color: Colors.white,
      height: 350,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 60,
                  alignment: Alignment.center,
                  child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye),
                        labelStyle: TextStyle(fontSize: 16),
                        labelText: "Old Password",
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 60,
                  alignment: Alignment.center,
                  child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye),
                        labelStyle: TextStyle(fontSize: 16),
                        labelText: "New Password",
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 60,
                  alignment: Alignment.center,
                  child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye),
                        labelStyle: TextStyle(fontSize: 16),
                        labelText: "New Password Again",
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
                  width: 200,
                  child: OutlineButton(
                    child: Text("Update"),
                    onPressed: () {
                      Toast.show("Password Successfully updated", context, gravity: Toast.BOTTOM);
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