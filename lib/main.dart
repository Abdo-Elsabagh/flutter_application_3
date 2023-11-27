import 'package:flutter/material.dart';
import 'package:flutter_application_3/FirstScreen.dart';
import 'package:flutter_application_3/home_viem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: FirstScrenn(),
      home: HomeViem(),
    );
  }
}
