import 'dart:async';

import 'package:flutter/material.dart';
import 'package:squip/screens/splash_screen/splash_screen_view_model.dart';
import 'package:squip/utils/color_constant.dart';
import 'package:squip/utils/image_constant.dart';
import 'package:stacked/stacked.dart';

class SplashScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashScreenViewModel>.reactive(
      onViewModelReady: (viewModel) {
        Timer(Duration(seconds: 5), (() => viewModel.navToMainMenu()));
      },
      viewModelBuilder: () => SplashScreenViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
              child: Image.asset(
            logo,
            height: 100,
            width: 100,
          )),
          SizedBox(
            height: 20,
          ),
          Text("SQuiP", style: TextStyle(fontSize: 20, color: redColor)),
          Text("Version 19.9.9",
              style: TextStyle(fontSize: 15, color: redColor)),
        ]),
      ),
    );
  }
}