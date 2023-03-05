import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chatModels.dart';

class chatScreen extends StatefulWidget {
  const chatScreen({super.key});

  @override
  State<chatScreen> createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  @override
  Widget build(BuildContext context) {
    List<chatModel> dummyData = [
      chatModel(
          name: "Ejaz Ahmed",
          message: "HEllo Flutter is great",
          time: "12:30",
          avatarURL:
              "https://www.pexels.com/photo/man-smiling-behind-wall-220453/"),
      chatModel(
          name: "Abbas ahmed",
          message: "hye i need your help",
          time: "11:10",
          avatarURL:
              "https://www.pexels.com/photo/man-smiling-behind-wall-220453/"),
      chatModel(
          name: "Waleed ahmed",
          message: "i will be there by tomorrow :)",
          time: "9:30",
          avatarURL:
              "https://www.pexels.com/photo/man-smiling-behind-wall-220453/"),
      chatModel(
          name: "Azhar khan",
          message: "Best of luck (y)",
          time: "12:25",
          avatarURL:
              "https://www.pexels.com/photo/man-smiling-behind-wall-220453/"),
      chatModel(
          name: "Muheeb Khan",
          message: "yeah! Flutter is great",
          time: "12:30",
          avatarURL:
              "https://www.pexels.com/photo/man-smiling-behind-wall-220453/"),
      chatModel(
          name: "Nadeem Khan",
          message: "Be ready for interview don't miss anything",
          time: "12:30",
          avatarURL:
              "https://www.pexels.com/photo/man-smiling-behind-wall-220453/")
    ];

    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => Column(
              children: [
                Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(dummyData[i].avatarURL),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dummyData[i].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        dummyData[i].time,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                      )
                    ],
                  ),
                  subtitle: Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      dummyData[i].message,
                      style: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                  ),
                )
              ],
            ));
  }
}
