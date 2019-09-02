import 'package:flutter/material.dart';
import 'package:korvon/ui/categories.dart';
import 'package:korvon/ui/favorites.dart';
import 'package:korvon/ui/korvon_home.dart';
import 'package:korvon/ui/my_account.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/korvon_home': (context) => KorvonHome(),
        '/category': (context) => Categories(),
        '/favorites': (context) => Favorites(),
        '/myaccount': (context) => MyAccount(),
      },
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyScreens(),
    );
  }
}

class MyScreens extends StatefulWidget {
  @override
  MyScreensState createState() => new MyScreensState();
}

class MyScreensState extends State<MyScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: pages(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favourites'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('My Account'),
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber[800],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget pages(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return KorvonHome();
        break;
      case 1:
        return Categories();
        break;
      case 2:
        return Favorites();
        break;
      case 3:
        return MyAccount();
        break;
    }
    return KorvonHome();
  }
}
