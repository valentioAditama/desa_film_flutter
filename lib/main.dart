import 'package:flutter/material.dart';

// auth import
import 'pages/login/login.dart';
import 'pages/register/register.dart';

// home import 
import 'pages/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => home(),
        '/login': (context) => login(),
        '/register': (context) => register(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => home());
      },
    );
  }
}
