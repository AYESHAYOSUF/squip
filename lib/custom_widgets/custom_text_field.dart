import 'package:flutter/material.dart';

import '../utils/color_constant.dart';

Widget customTextField(text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(text,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: redColor)),
      TextFormField(
        // controller: controller,
        decoration: InputDecoration(
            isDense: true,
            labelText: text,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: redColor))),
      ),
    ],
  );
}