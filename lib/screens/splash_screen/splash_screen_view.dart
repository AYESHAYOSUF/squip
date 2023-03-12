

// import 'dart:async';
// import 'dart:js';

// import 'package:flutter/material.dart';
// import 'package:squip/screens/login_user/login_user.dart';
// import 'package:squip/screens/splash_screen/splash_screen_view.dart';
// import 'package:squip/screens/splash_screen/splash_screen_view_model.dart';
// import 'package:squip/utils/color_constant.dart';
// import 'package:stacked/stacked.dart';

// class SplashScreenView extends StatelessWidget {
 

//     void initState() {
//     startTime();
//   }

//   startTime() async {
//     var duracion = Duration(seconds: 9);
//         return new Timer(duracion, route);
//     }
  
//   @override
//   Widget build(BuildContext context) {
//     return ViewModelBuilder<SplashScreenViewModel>.reactive(
//       viewModelBuilder: () => SplashScreenViewModel(),
//       builder: (context, viewModel, child) => Scaffold(
//         body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Center(
          
//               child: Image.asset(
//             "../assets/icons/police_logo.png",
//             height: 100,
//             width: 100,
            
//           )),
//           SizedBox(
//             height: 20,
//           ),
 
//           Text("SQuiP", style: TextStyle(fontSize: 20, color: redColor)),
//           Text("Version 19.9.9",
//               style: TextStyle(fontSize: 15, color: redColor)),
//         ]),
//       ),
//     );
//   }}