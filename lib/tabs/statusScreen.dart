import 'package:flutter/material.dart';

import '../models/statusModel.dart';

class statusScreen extends StatelessWidget {
  const statusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<statusModel> dummyData = [
      statusModel(
          name: "Ejaz Ahmed",
          time: "-12:30",
          avatarURL:
              "https://www.pexels.com/photo/man-smiling-behind-wall-220453/",
          day: 'Wednesday'),
      statusModel(
          name: "Azhar Ahmed",
          time: "-1:30",
          avatarURL:
              "https://www.pexels.com/photo/man-smiling-behind-wall-220453/",
          day: 'Wednesday'),
      statusModel(
          name: "Nawaz Khan",
          time: "-11:30",
          avatarURL:
              "https://www.pexels.com/photo/man-smiling-behind-wall-220453/",
          day: 'Today'),
      statusModel(
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
                  title: Text(
                    dummyData[i].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
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
