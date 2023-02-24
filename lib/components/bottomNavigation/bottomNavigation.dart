import 'package:flutter/material.dart';
import 'package:desa_film_flutter/pages/home/home.dart';
import 'package:desa_film_flutter/pages/login/login.dart';
import 'package:desa_film_flutter/pages/register/register.dart';

class bottomNaviation extends StatefulWidget {
  @override
  _bottomNaviationState createState() => _bottomNaviationState();
}

class _bottomNaviationState extends State<bottomNaviation> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    login(),
    home(),
    register(),
  ];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

}
