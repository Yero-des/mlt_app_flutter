import 'package:app_test/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key}); // Key widget, important

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(

      home: HomeScreen(),
      debugShowCheckedModeBanner: false, // No debug

    );

  }

}