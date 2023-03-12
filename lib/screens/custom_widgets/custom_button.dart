import 'package:flutter/material.dart';

Widget customButton({
  onPress,
  text,
  color,
  bgColor,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: bgColor,
      padding: EdgeInsets.all(12),
    ),
    onPressed: () {
      onPress;
    },
    child: Text(
      text,
      style: TextStyle(color: color),
    ),
  );
}