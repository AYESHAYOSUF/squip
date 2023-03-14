import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:squip/utils/image_constant.dart';
import 'package:velocity_x/velocity_x.dart';

customBanner() {
  var sliderList = [imgSlider1, imgSlider2, imgSlider3, imgSlider4];

  return VxSwiper.builder(
      aspectRatio: 16 / 9,
      autoPlay: true,
      height: 150,
      enlargeCenterPage: true,
      itemCount: sliderList.length,
      itemBuilder: ((context, index) {
        return Container(
          // padding: EdgeInsets.only(bottom: ),
          margin: EdgeInsets.all(9),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Image.asset(
            sliderList[index],
            fit: BoxFit.fitWidth,
          ),
        );
      }));
}