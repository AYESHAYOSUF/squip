
import 'package:squip/screens/user_side/active_services_user/active_services_user_view.dart';
import 'package:squip/screens/user_side/user_profile/user_profile_view.dart';
import 'package:stacked/stacked.dart';

import '../request_emergency_user/request_emergency_user_view.dart';

class WelcomeUserViewModel extends BaseViewModel {
  int myIndex = 0;

  List widgetOptions = [
    RequestEmergencyView(),
    ActiveServiceView(),
    UserProfileView()
  ];

  onselectItem(index) {
    myIndex = index;
    rebuildUi();
  }
}