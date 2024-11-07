import 'package:flutter/material.dart';
import 'home.page.dart';
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontSize: 40, 
            color: Colors.white
            ),
          ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, primary: Colors.white),
        indicatorColor: Colors.blueAccent),
      home: Homepage());
  }
}