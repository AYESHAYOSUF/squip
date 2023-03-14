import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customButton({
  onTap,
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
      onTap;
    },
    child: Text(
      text,
      style: TextStyle(color: color),
    ),
  );
}