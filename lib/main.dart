import 'package:flutter/material.dart';
import 'package:screen_design/attendance_screen.dart';
import 'package:screen_design/home_screen.dart';
import 'package:screen_design/leave_screen.dart';
import 'package:screen_design/profile_screen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: ProfileScreen()
    );
  }
}

