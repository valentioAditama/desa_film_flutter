import 'package:flutter/material.dart';
import 'pages/home/home.dart';
import 'pages/login/login.dart';
import 'pages/category/category.dart';
import 'pages/search/search.dart';
import 'pages/account/account.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Builder(builder: (BuildContext context) {
      return home();
    }),
    Builder(builder: (BuildContext context) {
      return category();
    }),
    Builder(builder: (BuildContext context) {
      return search();
    }),
    Builder(builder: (BuildContext context) {
      return account();
    }),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Demo',
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
        ),
      ),
      // Routes for each bottom navigation item
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => home(),
        '/category': (BuildContext context) => category(),
        '/search': (BuildContext context) => search(),
        '/account': (BuildContext context) => login(),
      },
    );
  }
}
