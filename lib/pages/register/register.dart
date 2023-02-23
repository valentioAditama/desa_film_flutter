import 'package:flutter/material.dart';

class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('register'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the `register` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pop(context);
          },
          child: const Text('Back to register'),
        ),
      ),
    );
  }
}
