import 'package:chat_bot_app/screen/dashboard_screen.dart';
import 'package:chat_bot_app/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData.dark(),
      home: DashboardScreen()
    );
  }
}

