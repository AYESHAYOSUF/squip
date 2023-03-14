import 'package:flutter/material.dart';

class takingLoggedInUserNameService {
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  String name = "";
  userName() {
    name = loginEmailController.text;
  }
}