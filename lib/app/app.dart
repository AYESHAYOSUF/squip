import 'package:squip/ambulance_request_captain/ambulance_request_captain_view.dart';
import 'package:squip/fire_request_captain/fire_request_captain_view.dart';
import 'package:squip/all_request_captain/all_request_captain_view.dart';
import 'package:squip/request_ambulance/request_ambulance_view.dart';
import 'package:squip/request_fire/request_fire_view.dart';
import 'package:squip/screens/login_captain/login_ambulance/login_ambulance.dart';
import 'package:squip/screens/login_captain/login_fire_brigade/login_fire_brigade.dart';
import 'package:squip/screens/login_captain/login_police/login_police.dart';
import 'package:squip/screens/login_user/login_user.dart';
import 'package:squip/screens/main_menu/main_menu_view.dart';
import 'package:squip/screens/splash_screen/splash_screen_view.dart';
import 'package:squip/screens/user_side/active_services_user/active_services_user_view.dart';
import 'package:squip/screens/user_side/request_emergency_user/request_emergency_user_view.dart';
import 'package:squip/screens/user_side/user_profile/user_profile_view.dart';
import 'package:squip/screens/user_side/welcome_user/welcome_user_view.dart';
import 'package:squip/services/takingLoggedInUserName.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashScreenView, initial: true),
  MaterialRoute(page: LoginUserView),
  MaterialRoute(page: LoginAmbulanceView),
  MaterialRoute(page: LoginPoliceView),
  MaterialRoute(page: LoginFireBrigadeView),
  MaterialRoute(page: ActiveServiceView),
  MaterialRoute(page: RequestEmergencyView),
  MaterialRoute(page: UserProfileView),
  MaterialRoute(page: WelcomeUserView),
  MaterialRoute(page: MainMenuView),
  MaterialRoute(page: RequestAmbulanceView),
  MaterialRoute(page: RequestFireView),
  MaterialRoute(page: AllRequestCaptainView),
  MaterialRoute(page: FireRequestCaptainView),
  MaterialRoute(page: AmbulanceRequestCaptainView),
], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: DialogService),
  LazySingleton(classType: takingLoggedInUserNameService)
])
class App {}