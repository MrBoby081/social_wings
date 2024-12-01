import 'dart:async';

import 'package:flutter/material.dart';
import 'package:social_wings/Pages/on_boarding.dart';
import 'package:social_wings/widgets/ui_com.dart';

class Spalash extends StatefulWidget {
  const Spalash({super.key});

  @override
  State<Spalash> createState() => _SpalashState();
}

class _SpalashState extends State<Spalash> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(
        // pushReplacement uses for not to back on smae page.
          context, MaterialPageRoute(
          builder: (context) =>OnBoarding())
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Images/whatsapp 1.png"),
            SizedBox(height: 15),
            UiCom.CustomText(text: "Social Wings", height: 18,
              fontweight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
