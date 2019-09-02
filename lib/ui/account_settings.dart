import 'package:flutter/material.dart';
import 'package:korvon/ui/password_change.dart';
import 'package:korvon/ui/user_information.dart';

import 'address_information.dart';
import 'my_cards.dart';

class AccountSettings extends StatefulWidget {
  @override
  _AccountSettings createState() => _AccountSettings();
}

class _AccountSettings extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Title(
          color: Colors.black,
          child: Text("Account Settings"),
        ),
      ),
      body: createListOfSettings(),
    );
  }

  Widget createListOfSettings() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ListView(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserInformation()));

                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('User Information'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddressInformation()));
                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.place),
                          title: Text('Address Information'),
                        ),
                      ),
                    ),
                    GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyCards()));
                    },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.credit_card),
                          title: Text('Cards'),
                        ),
                      ),
                    ),
                    GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PasswordChange()));
                    },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.lock),
                          title: Text('Password Change'),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.power_settings_new),
                        title: Text('Log Out'),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

}
