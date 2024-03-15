import 'package:alarm_poc/screens/home_page.dart';
import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';


void main()async{
  runApp(flutterApp());
  await AndroidAlarmManager.initialize();
}

class flutterApp extends StatefulWidget {
  const flutterApp({super.key});

  @override
  State<flutterApp> createState() => _flutterAppState();
}

class _flutterAppState extends State<flutterApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
