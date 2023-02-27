import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        body: SingleChildScrollView( 
          child: Padding(
            padding: EdgeInsets.only(top: 10)
            ),
        ),
      ),
    );
  }
}
