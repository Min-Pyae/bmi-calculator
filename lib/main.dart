import 'package:bmi_calculator/screen/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      debugShowCheckedModeBanner: false,

      // DARK THEME WITH CUSTOM COLORS
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        //platform: TargetPlatform.iOS
      ),

      home: const HomePage(),
      
    );
  }
}