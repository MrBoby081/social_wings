import 'dart:io';

import 'package:flutter/material.dart';
import 'package:social_wings/screens/Home/home_page.dart';

import 'package:social_wings/widgets/ui_com.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 90),
            UiCom.CustomText(
                text: "Profile Info",
                height: 16,
                color: Colors.green,
                fontweight: FontWeight.bold),
            SizedBox(height: 40),
            UiCom.CustomText(
              text: 'Please provide your name and an optiona',
              height: 16,
            ),
            SizedBox(height: 5),
            UiCom.CustomText(
              text: 'profile photo',
              height: 16,
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                _openBottom(context);
              },
              child: CircleAvatar(
                radius: 90,
                backgroundColor: Color(0XFFD9D9D9),
                child: Image.asset(
                  "assets/Images/photo-camera 1.png",
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Type Your Name...",
                        hintStyle: TextStyle(color: Color(0XFF5E5E5E)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF05AA82))),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 0),
                Image.asset("assets/Images/happy-face 1.png"),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiCom.CustomButton(
          callback: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            height: 120,
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.camera_alt,
                      size: 80,
                      color: Colors.grey[400],
                    ),
                    Icon(
                      Icons.image,
                      size: 80,
                      color: Colors.grey[400],
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }
}
