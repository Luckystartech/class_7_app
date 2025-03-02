import 'package:flutter/material.dart';
import 'package:class_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

//Stateless widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
