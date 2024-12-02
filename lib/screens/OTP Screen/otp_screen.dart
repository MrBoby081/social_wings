import 'package:flutter/material.dart';
import 'package:social_wings/screens/Profile/profile_Screen.dart';
import 'package:social_wings/widgets/ui_com.dart';

class OtpScreen extends StatelessWidget {
  final String phoneNumber;
  final TextEditingController otp1Controller = TextEditingController();
  final TextEditingController otp2Controller = TextEditingController();
  final TextEditingController otp3Controller = TextEditingController();
  final TextEditingController otp4Controller = TextEditingController();
  final TextEditingController otp5Controller = TextEditingController();
  final TextEditingController otp6Controller = TextEditingController();

  OtpScreen({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),

            // Verify your Number
            UiCom.CustomText(
              text: "Verifying Your Number",
              height: 16,
              fontweight: FontWeight.bold,
              color: Colors.green,
            ),

            //

            SizedBox(height: 30),

            // About number details
            UiCom.CustomText(
              text: "You've tried to register +91${phoneNumber}",
              height: 16,
            ),
            SizedBox(height: 6),

            UiCom.CustomText(
              text: 'recently. Wait before requesting an sms or a call',
              height: 16,
            ),
            SizedBox (height: 6),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiCom.CustomText(
                  text: ' with your code.',
                  height: 16,
                ),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiCom.CustomText(
                    text: 'Wrong Number?',
                    height: 16,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            SizedBox(height: 50),
            // Otp Boxes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiCom.CustomContainer(otp1Controller),
                SizedBox(width: 7),
                UiCom.CustomContainer(otp2Controller),
                SizedBox(width: 7),
                UiCom.CustomContainer(otp3Controller),
                SizedBox(width: 20),
                UiCom.CustomContainer(otp4Controller),
                SizedBox(width: 7),
                UiCom.CustomContainer(otp5Controller),
                SizedBox(width: 7),
                UiCom.CustomContainer(otp6Controller),
              ],
            ),
            SizedBox(height: 30),
            // Did't Receive code
            UiCom.CustomText(
                text: "Did't receive code?",
                height: 14,
                color: Colors.green),
          ],
        ),
      ),
      floatingActionButton:
      UiCom.CustomButton(callback: (){
        Navigator.push(
          context, MaterialPageRoute
          (builder: (context)=>ProfileScreen()),
        );
      } , buttonname: "Next",),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}

