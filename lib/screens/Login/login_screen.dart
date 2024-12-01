import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:social_wings/widgets/ui_com.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController=TextEditingController();
  String selectedCountry = "Select";
  List<String> countries = [
    "Select",
    "America",
    "Africa",
    "Australia",
    "Bhutan",
    "Bangladesh",
    "Canada",
    "China",
    "Denmark",
    "England",
    "India",
    "Japan",
    "Pakistan",
  ];
  String selectCountryCode = "+91";
  List<String> codes = ["+91", "+92", "+612", "+93", "+122"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body:  Column(
          children: [
            // Enter You number
            UiCom.CustomText(
              text: "Enter Your Number",
              height: 20,
              color: Colors.green,
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 30),

            // About number details
            UiCom.CustomText(
              text: 'WhatsApp will need to verify your phone',
              height: 16,
            ),
            SizedBox(height: 6),

            UiCom.CustomText(
              text: 'number. Carrier charges may apply',
              height: 16,
            ),
            SizedBox(height: 6),
            UiCom.CustomText(
              text: 'What’s my number?',
              height: 16,
              color: Colors.blue,
            ),

            SizedBox(height: 50),

            // select contry
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                )),
                items: countries.map((String country) {
                  return DropdownMenuItem(
                    child: Text(country.toString()),
                    value: country,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value!;
                  });
                },
                value: selectedCountry,
              ),
            ),
            SizedBox(height: 15),
            // Phone Number

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 65,
                    child: DropdownButtonFormField(
                      items: codes.map((String code) {
                        return DropdownMenuItem(
                          child: Text(code.toString()),
                          value: code,
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectCountryCode = value!;
                        });
                      },
                      value: selectCountryCode,
                    ),
                  ),
                  SizedBox(width: 15),

                  // numer field
                  SizedBox(
                    width: 291,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: phoneController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      floatingActionButton: UiCom.CustomButton(
          callback: (){},
          buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );

  }
}
