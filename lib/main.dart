import 'package:flutter/material.dart';
import 'package:social_wings/screens/Splash/spalash.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Wings',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF5E5E5E)),
        useMaterial3: false,
      ),
      home: Spalash(),
    );
  }
}
