import 'package:flutter/material.dart';
import 'package:projeto/profile_screen.dart';

void main() => runApp(HairCareApp());

class HairCareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hair Care App',
      theme: ThemeData(
        primaryColor: Colors.purple, // Cor principal roxa
        hintColor: Colors.purpleAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfileScreen(),
    );
  }
}
