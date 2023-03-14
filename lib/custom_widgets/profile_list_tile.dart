import 'package:flutter/material.dart';

profileListTile(String ttitle, IconData myIcon) {
  return ListTile(
    title: Text(ttitle),
    leading: Icon(myIcon),
    trailing: Icon(Icons.forward),
  );
}