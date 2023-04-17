import 'package:fastingapp/introductionscreens/discover_screen.dart';
import 'package:fastingapp/introductionscreens/listof_introduction_screerns.dart';
import 'package:fastingapp/introductionscreens/scientifically_screen.dart';
import 'package:fastingapp/introductionscreens/your_personal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: listofintroductionscreens(),

      //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
