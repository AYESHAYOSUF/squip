import 'package:flutter/material.dart';
import 'package:squip/utils/color_constant.dart';

floatingButton(Function logout) {
  return FloatingActionButton.extended(
    onPressed: () {
      logout();
    },
    label: Text("Sign out"),
    focusColor: redColor,
    backgroundColor: redColor,
  );
}