import 'package:squip/app/app.locator.dart';
import 'package:squip/app/app.router.dart';
import 'package:squip/screens/login_captain/login_ambulance/login_ambulance.dart';
import 'package:squip/screens/login_captain/login_fire_brigade/login_fire_brigade.dart';
import 'package:squip/screens/login_captain/login_police/login_police.dart';
import 'package:squip/screens/splash_screen/splash_screen_view.dart';
import 'package:squip/screens/user_side/active_services_user/active_services_user_view.dart';
import 'package:squip/screens/user_side/user_profile/user_profile_view.dart';
import 'package:squip/select_emergency_user/slect_emergency_user.dart.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../request_emergency_user/request_emergency_user_view.dart';

class WelcomeUserViewModel extends BaseViewModel {
  int myIndex = 0;
  final nav = locator<NavigationService>();

  logout() {
    nav.navigateToMainMenuView();
  }

  List widgetOptions = [
    SelectEmergencyUserView(),
    ActiveServiceView(),
    UserProfileView()
  ];

  onselectItem(index) {
    myIndex = index;
    rebuildUi();
  }
}