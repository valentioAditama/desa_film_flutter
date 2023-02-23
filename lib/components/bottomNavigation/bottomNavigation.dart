import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "explore"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "category"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'account'
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
