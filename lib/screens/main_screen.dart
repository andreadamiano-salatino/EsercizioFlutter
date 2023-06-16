import 'package:flutter/material.dart';
import 'package:login/screens/first_screen.dart';
import 'package:login/screens/list_screen.dart';
import 'package:login/screens/login_screeen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}
