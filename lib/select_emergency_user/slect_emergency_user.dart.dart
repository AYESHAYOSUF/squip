import 'package:flutter/material.dart';
import 'package:squip/custom_widgets/app_bar.dart';
import 'package:squip/custom_widgets/custom_banner.dart';
import 'package:squip/screens/user_side/welcome_user/welcome_user_view_model.dart';
import 'package:squip/select_emergency_user/slect_emergency_model.dart';
import 'package:squip/utils/color_constant.dart';
import 'package:squip/utils/image_constant.dart';
import 'package:stacked/stacked.dart';

class SelectEmergencyUserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SelectEmergencyUserViewModel>.reactive(
        viewModelBuilder: () => SelectEmergencyUserViewModel(),
        builder: (context, viewModel, child) => Scaffold(
              appBar: customerAppBar("Select Emergency"),
              body: Center(
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                              "Police Emergency",
                              style: TextStyle(
                                  color: whiteColor, backgroundColor: redColor),
                            ),
                            onPressed: () {
                              viewModel.selectPolice();
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
                              "Ambulance Emergency",
                              style: TextStyle(
                                  color: whiteColor, backgroundColor: redColor),
                            ),
                            onPressed: () {
                              viewModel.selectAmbulance();
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
                              "Fire Brigade Emergency",
                              style: TextStyle(
                                  color: whiteColor, backgroundColor: redColor),
                            ),
                            onPressed: () {
                              viewModel.selectFire();
                            },
                          )),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}