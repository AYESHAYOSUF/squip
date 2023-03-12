import 'package:flutter/material.dart';
import 'package:squip/screens/main_menu/main_menu_view.dart';
import 'package:squip/screens/splash_screen/splash_screen_view.dart';
import 'package:squip/screens/splash_screen/splash_screen_view_model.dart';
import 'package:squip/screens/user_side/request_emergency_user/request_emergency_user_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainMenuView(),
    );
  }
}