import 'package:flutter/material.dart';
import 'package:desa_film_flutter/components/bottomNavigation/bottomNavigation.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          // Within the `home` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/register');
          },
          child: const Text('Login screen'),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
