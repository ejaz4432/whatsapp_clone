import 'package:flutter/material.dart';

import 'whatsappHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: Color(0xff075E54), secondary: Color(0xff25D366))),
      home: whatsappHome(),
    );
  }
}
