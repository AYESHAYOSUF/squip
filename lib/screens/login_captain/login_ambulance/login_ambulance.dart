import 'package:flutter/material.dart';
import 'package:squip/custom_widgets/custom_button.dart';
import 'package:squip/custom_widgets/custom_text_field.dart';
import 'package:squip/screens/login_captain/login_ambulance/login_ambulance_view_model.dart';
import 'package:squip/utils/color_constant.dart';
import 'package:squip/utils/image_constant.dart';
import 'package:stacked/stacked.dart';

class LoginAmbulanceView extends StatelessWidget {
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginAmbulanceViewModel>.reactive(
      viewModelBuilder: () => LoginAmbulanceViewModel(),
      builder: (context, viewModel, child) => Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(20)),
                Text("AMBULANCE LOGIN"),
                Text("Login to your account",
                    style: TextStyle(fontSize: 20, color: redColor)),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                        color: lightGrey,
                        blurRadius: 10.0,
                        spreadRadius: 5.0,
                        offset: Offset(0.0, 0.0),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(20),
                  width: 400,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      TextFormField(
                        controller: loginEmailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        controller: loginPasswordController,
                        decoration: InputDecoration(
                          labelText: "Password",
                        ),
                        obscureText: true,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            child: Text("Forget Password"), onPressed: () {}),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                          width: double.infinity,
                          // width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: redColor,
                              padding: EdgeInsets.all(12),
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: whiteColor, backgroundColor: redColor),
                            ),
                            onPressed: () {
                              viewModel.SignInUser(loginEmailController,
                                  loginPasswordController, context);
                              viewModel.moveToAmbulanceRequest();
                            },
                          )),
                      Text(
                        "Don't have an account? Create one",
                        style: TextStyle(color: redColor),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: double.infinity,
                          child: customButton(
                              onTap: () {},
                              text: "Sign Up",
                              color: redColor,
                              bgColor: golden)),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                              child: Image.asset(icFacebookLogo),
                              backgroundColor: lightGrey),
                          SizedBox(width: 15),
                          CircleAvatar(
                              child: Image.asset(icGoogleLogo),
                              backgroundColor: lightGrey),
                          SizedBox(width: 15),
                          CircleAvatar(
                              child: Image.asset(icTwitterLogo),
                              backgroundColor: lightGrey)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}