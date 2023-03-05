import 'package:flutter/material.dart';
import 'tabs/callsScreen.dart';
import 'tabs/communityScreen.dart';
import 'tabs/chatScreen.dart';
import 'tabs/statusScreen.dart';

class whatsappHome extends StatefulWidget {
  const whatsappHome({super.key});

  @override
  State<whatsappHome> createState() => _whatsappHomeState();
}

class _whatsappHomeState extends State<whatsappHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        actions: [
          Icon(Icons.camera_alt),
          Padding(padding: EdgeInsets.symmetric(horizontal: 9.0)),
          Icon(Icons.search),
          Padding(
              padding: EdgeInsets.symmetric(
            horizontal: 7.0,
          )),
          Icon(Icons.more_vert)
        ],
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.people),
            ),
            Tab(
              child: Text("Chats"),
            ),
            Tab(
              child: Text("Status"),
            ),
            Tab(
              child: Text("Calls"),
            ),
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        communityScreen(),
        chatScreen(),
        statusScreen(),
        callsScreen(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => null,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(Icons.message),
      ),
    );
  }
}
