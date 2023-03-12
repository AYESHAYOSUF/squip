import 'package:flutter/material.dart';
import 'package:squip/models/main_menu_view_model.dart';
import 'package:squip/screens/login_user/login_user.dart';


import 'package:squip/utils/color_constant.dart';
import 'package:stacked/stacked.dart';

import '../custom_widgets/custom_banner.dart';
import '../custom_widgets/custom_button.dart';

class MainMenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context)
   {
    return ViewModelBuilder<MainMenuViewModel>.reactive(
        viewModelBuilder: () => MainMenuViewModel(),
        builder: (context, viewModel, child) => Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    customBanner(),
                    Container(
                      width: 150,
                      // width: double.infinity,
                      child: customButton(
                        child : Text("USER LOGIN "),
                      Navigator.push(context , MaterialPageRoute(builder: (context) =>  LoginUserView()
                      )
                      )
                   
                        
                       
                    ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Container(
//                       width: 200,
//                       child: customButton(
//                           onPress: () {},
//                           text: "Fire Brigade",
//                           color: whiteColor,
//                           bgColor: redColor),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Container(
//                       width: 200,
//                       // width: double.infinity,
//                       child: customButton(
//                           onPress: () {},
//                           text: "Police Login",
//                           color: whiteColor,
//                           bgColor: redColor),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Container(
                    
//                       child: customButton(
//                           onPress: () {},
//                           text: "Ambulance Login",
//                           color: whiteColor,
//                           bgColor: redColor),
//                     ),
//                   ],
//                 ),
//               ),
//             ));
//   }
// }