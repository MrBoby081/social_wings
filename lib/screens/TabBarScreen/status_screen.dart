import 'package:flutter/material.dart';
import 'package:social_wings/widgets/ui_com.dart';

class StatusScreen extends StatelessWidget {
  StatusScreen({super.key});
  var statusContent = [
    {
      "img": "assets/Images/new.jpg",
      "name": "Riya",
      "statustime": "10 min ago",
    },
    {
      "img": "assets/Images/new2.jpg",
      "name": "Shreya",
      "statustime": "23 hours ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiCom.CustomText(text: "Status", height: 20),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        AssetImage("assets/Images/status avatar.png"),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: UiCom.CustomText(text: "My Status", height: 20),
            subtitle:
                UiCom.CustomText(text: "Tap to add Status update", height: 15),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiCom.CustomText(text: "Recent upadates", height: 15),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey.shade500,
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      statusContent[index]["img"].toString()),
                ),
                title: UiCom.CustomText(
                    text: statusContent[index]["name"].toString(),
                    height: 16,
                fontweight: FontWeight.bold,
                ),
                subtitle: UiCom.CustomText(text: statusContent[index]["statustime"].toString(),
                    height: 14),
              );
            },
            itemCount: statusContent.length,
            ),
          )
        ],
      ),
    );
  }
}
