import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:squip/app/app.locator.dart';
import 'package:squip/app/app.router.dart';
import 'package:squip/firebase_options.dart';
import 'package:squip/screens/login_captain/login_ambulance/login_ambulance.dart';
import 'package:squip/screens/login_captain/login_fire_brigade/login_fire_brigade.dart';
import 'package:squip/screens/login_captain/login_police/login_police.dart';
import 'package:squip/screens/login_user/login_user.dart';
import 'package:squip/screens/main_menu/main_menu_view.dart';
import 'package:squip/screens/splash_screen/splash_screen_view.dart';
import 'package:squip/screens/user_side/request_emergency_user/request_emergency_user_view.dart';
import 'package:squip/screens/user_side/welcome_user/welcome_user_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}