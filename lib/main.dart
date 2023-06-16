import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login/screens/main_screen.dart';

void main() {
  //Bloccare rotazione dispositivo

  runApp(const MainScreen());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
