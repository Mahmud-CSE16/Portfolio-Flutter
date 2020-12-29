import 'package:flutter/material.dart';
import 'package:mahmud_portfolio/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Md. Mahmudul Islam | Chief Technical Officer - Prottoy | Full Stack Developer | Mobile App Developer | Flutter Developer | Django Developer',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:HomeScreen(),
    );
  }
}