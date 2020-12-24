import 'package:flutter/material.dart';
import 'HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF1f2427),
        scaffoldBackgroundColor: Color(0xFF1f2427),
      ),
      home: HomePage(),
    );
  }
}
