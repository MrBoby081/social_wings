import 'package:flutter/material.dart';
import 'package:social_wings/screens/Login/login_screen.dart';
import 'package:social_wings/widgets/ui_com.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // animated logo
            Image.asset("assets/Images/image 1.png"),
            SizedBox(height: 50),

            // welcome message
            UiCom.CustomText(
              text: "Welcome to Social Wings",
              height: 25,
              fontweight: FontWeight.bold,
              color: Colors.black,
            ),

            SizedBox(height: 15),

            // privacy policy
            UiCom.CustomText(
                text: "Read out the Privacy policy. Tap agree to continue ",
                height: 15),

            // Next button
          ],
        ),
      ),
      floatingActionButton: UiCom.CustomButton(
        callback: () {
          Navigator.push(
              context, MaterialPageRoute(
              builder: (context)=>LoginScreen()),
          );
        },
        buttonname: "Agree and Contnue",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
