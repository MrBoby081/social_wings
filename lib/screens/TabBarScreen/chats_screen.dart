import 'package:flutter/material.dart';
import 'package:social_wings/screens/Contacts/Contacts_Screen.dart';
import 'package:social_wings/screens/TabBarScreen/status_screen.dart';
import 'package:social_wings/widgets/ui_com.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({super.key});
  var arrContent = [
    {
      "image":
          "assets/Images/new2.jpg",
      "name": "Shreya",
      "lastmasg": "Catch up after some time",
      "time": "05:45",
      "msg": "7",
    },
    {
      "image":
          "assets/Images/new.jpg",
      "name": "Riya",
      "lastmasg": "Hey Sid!",
      "time": "09:45",
      "msg": "2"
    },
    {
      "image":
      "assets/Images/new2.jpg",
      "name": "Shreya",
      "lastmasg": "Catch up after some time",
      "time": "05:45",
      "msg": "7",
    },
    {
      "image":
      "assets/Images/new.jpg",
      "name": "Riya",
      "lastmasg": "Hey Sid!",
      "time": "09:45",
      "msg": "2"
    },
    {
      "image":
      "assets/Images/new2.jpg",
      "name": "Shreya",
      "lastmasg": "Catch up after some time",
      "time": "05:45",
      "msg": "7",
    },
    {
      "image":
      "assets/Images/new.jpg",
      "name": "Riya",
      "lastmasg": "Hey Sid!",
      "time": "09:45",
      "msg": "2"
    },
    {
      "image":
      "assets/Images/new2.jpg",
      "name": "Shreya",
      "lastmasg": "Catch up after some time",
      "time": "05:45",
      "msg": "7",
    },
    {
      "image":
      "assets/Images/new.jpg",
      "name": "Riya",
      "lastmasg": "Hey Sid!",
      "time": "09:45",
      "msg": "2"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                    itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 53,
                  backgroundImage:
                  AssetImage(arrContent[index]["image"].toString()),
                ),
                title: UiCom.CustomText(
                    text: arrContent[index]["name"].toString(), height: 14, fontweight: FontWeight.bold),
                subtitle: UiCom.CustomText(
                    text: arrContent[index]["lastmasg"].toString(), height: 14),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiCom.CustomText(
                        text: arrContent[index]["time"].toString(), height: 12),
                    CircleAvatar(
                             radius: 8,
                      child: UiCom.CustomText(
                          text: arrContent[index]["msg"].toString(),
                          height: 12,
                          color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
                    },
                    itemCount: arrContent.length,
                  ),
            ),
          ],
        ),
      floatingActionButton: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactsScreen()));
        },
        child: CircleAvatar(
          radius: 35,
          backgroundColor: Colors.green.shade500,
          child: Image.asset("assets/Images/comments.png"),
        ),
      ),
    );
  }

}
