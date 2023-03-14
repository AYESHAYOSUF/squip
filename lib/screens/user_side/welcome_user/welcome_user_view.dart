import 'package:flutter/material.dart';
import 'package:squip/screens/user_side/welcome_user/welcome_user_view_model.dart';
import 'package:squip/utils/color_constant.dart';
import 'package:squip/utils/image_constant.dart';
import 'package:stacked/stacked.dart';

class WelcomeUserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeUserViewModel>.reactive(
        viewModelBuilder: () => WelcomeUserViewModel(),
        builder: (context, viewModel, child) => Scaffold(
              body: Center(
                child: viewModel.widgetOptions.elementAt(viewModel.myIndex),
              ),
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: redColor,
                selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                type: BottomNavigationBarType.fixed,
                backgroundColor: whiteColor,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.access_alarm),
                      label: "Choose Emergency"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.emergency), label: "Active Services"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.man), label: "User Profile"),
                ],
                onTap: ((index) {
                  viewModel.onselectItem(index);
                }),
                currentIndex: viewModel.myIndex,
              ),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {
                  viewModel.logout();
                },
                label: Text("Sign out"),
                focusColor: redColor,
                backgroundColor: redColor,
              ),
            ));
  }
}