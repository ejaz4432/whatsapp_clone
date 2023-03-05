import 'package:flutter/material.dart';

import '../models/callsModel.dart';

class callsScreen extends StatelessWidget {
  const callsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<callsModel> dummyData = [
      callsModel(
          name: "Ejaz Ahmed",
          time: "-12:30",
          avatarURL:
              "https://www.pexels.com/photo/man-smiling-behind-wall-220453/",
          day: 'Wednesday'),
      callsModel(
          name: "Azhar Ahmed",
          time: "-1:30",
          avatarURL:
              "https://www.pexels.com/photo/man-smiling-behind-wall-220453/",
          day: 'Wednesday'),
      callsModel(
          name: "Nawaz Khan",
          time: "-11:30",
          avatarURL:
              "https://www.pexels.com/photo/man-smiling-behind-wall-220453/",
          day: 'Today'),
      callsModel(
          name: "Ali Siddiqui",
          time: "-10:30",
          avatarURL:
              "https://www.pexels.com/photo/man-smiling-behind-wall-220453/",
          day: 'Wednesday'),
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
                      Icon(Icons.call)
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        dummyData[i].day,
                        style: TextStyle(fontSize: 15.0, color: Colors.grey),
                      ),
                      Text(
                        dummyData[i].time,
                        style: TextStyle(fontSize: 15.0, color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ));
  }
}
