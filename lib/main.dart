// lib/main.dart

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(ExploreSemarangApp());
}

class ExploreSemarangApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Semarang',
      theme: ThemeData(
        primaryColor: Color(0xFFF57C00),
        scaffoldBackgroundColor: Color(0xFFF5F5F5), // Update here
      ),
      home: HomeScreen(),
    );
  }
}
