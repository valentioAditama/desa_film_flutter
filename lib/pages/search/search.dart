import 'package:flutter/material.dart';

class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Search Movie",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "find your favorite movie",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat', 
                        fontWeight: FontWeight.w200),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
