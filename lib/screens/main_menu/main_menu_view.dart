import 'package:flutter/material.dart';
import 'package:squip/custom_widgets/app_bar.dart';
import 'package:squip/custom_widgets/custom_banner.dart';
import 'package:squip/custom_widgets/custom_button.dart';
import 'package:squip/screens/main_menu/main_menu_view_model.dart';
import 'package:squip/utils/color_constant.dart';
import 'package:stacked/stacked.dart';

class MainMenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainMenuViewModel>.reactive(
      viewModelBuilder: () => MainMenuViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: customerAppBar("Main Menu"),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                customBanner(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 200,
                        // width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: redColor,
                            padding: EdgeInsets.all(12),
                          ),
                          child: Text(
                            "User Login",
                            style: TextStyle(
                                color: whiteColor, backgroundColor: redColor),
                          ),
                          onPressed: () {
                            viewModel.gotoUser();
                          },
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 200,
                        // width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: redColor,
                            padding: EdgeInsets.all(12),
                          ),
                          child: Text(
                            "Fire Brigade Login",
                            style: TextStyle(
                                color: whiteColor, backgroundColor: redColor),
                          ),
                          onPressed: () {
                            viewModel.gotoFire();
                          },
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 200,
                        // width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: redColor,
                            padding: EdgeInsets.all(12),
                          ),
                          child: Text(
                            "Police Login",
                            style: TextStyle(
                                color: whiteColor, backgroundColor: redColor),
                          ),
                          onPressed: () {
                            viewModel.gotoPolice();
                          },
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 200,
                        // width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: redColor,
                            padding: EdgeInsets.all(12),
                          ),
                          child: Text(
                            "Ambulance Login",
                            style: TextStyle(
                                color: whiteColor, backgroundColor: redColor),
                          ),
                          onPressed: () {
                            viewModel.gotoAmbulance();
                          },
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}