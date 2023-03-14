// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i17;
import 'package:flutter/material.dart';
import 'package:squip/all_request_captain/all_request_captain_view.dart'
    as _i14;
import 'package:squip/ambulance_request_captain/ambulance_request_captain_view.dart'
    as _i16;
import 'package:squip/fire_request_captain/fire_request_captain_view.dart'
    as _i15;
import 'package:squip/request_ambulance/request_ambulance_view.dart' as _i12;
import 'package:squip/request_fire/request_fire_view.dart' as _i13;
import 'package:squip/screens/login_captain/login_ambulance/login_ambulance.dart'
    as _i4;
import 'package:squip/screens/login_captain/login_fire_brigade/login_fire_brigade.dart'
    as _i6;
import 'package:squip/screens/login_captain/login_police/login_police.dart'
    as _i5;
import 'package:squip/screens/login_user/login_user.dart' as _i3;
import 'package:squip/screens/main_menu/main_menu_view.dart' as _i11;
import 'package:squip/screens/splash_screen/splash_screen_view.dart' as _i2;
import 'package:squip/screens/user_side/active_services_user/active_services_user_view.dart'
    as _i7;
import 'package:squip/screens/user_side/request_emergency_user/request_emergency_user_view.dart'
    as _i8;
import 'package:squip/screens/user_side/user_profile/user_profile_view.dart'
    as _i9;
import 'package:squip/screens/user_side/welcome_user/welcome_user_view.dart'
    as _i10;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i18;

class Routes {
  static const splashScreenView = '/';

  static const loginUserView = '/login-user-view';

  static const loginAmbulanceView = '/login-ambulance-view';

  static const loginPoliceView = '/login-police-view';

  static const loginFireBrigadeView = '/login-fire-brigade-view';

  static const activeServiceView = '/active-service-view';

  static const requestEmergencyView = '/request-emergency-view';

  static const userProfileView = '/user-profile-view';

  static const welcomeUserView = '/welcome-user-view';

  static const mainMenuView = '/main-menu-view';

  static const requestAmbulanceView = '/request-ambulance-view';

  static const requestFireView = '/request-fire-view';

  static const allRequestCaptainView = '/all-request-captain-view';

  static const fireRequestCaptainView = '/fire-request-captain-view';

  static const ambulanceRequestCaptainView = '/ambulance-request-captain-view';

  static const all = <String>{
    splashScreenView,
    loginUserView,
    loginAmbulanceView,
    loginPoliceView,
    loginFireBrigadeView,
    activeServiceView,
    requestEmergencyView,
    userProfileView,
    welcomeUserView,
    mainMenuView,
    requestAmbulanceView,
    requestFireView,
    allRequestCaptainView,
    fireRequestCaptainView,
    ambulanceRequestCaptainView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashScreenView,
      page: _i2.SplashScreenView,
    ),
    _i1.RouteDef(
      Routes.loginUserView,
      page: _i3.LoginUserView,
    ),
    _i1.RouteDef(
      Routes.loginAmbulanceView,
      page: _i4.LoginAmbulanceView,
    ),
    _i1.RouteDef(
      Routes.loginPoliceView,
      page: _i5.LoginPoliceView,
    ),
    _i1.RouteDef(
      Routes.loginFireBrigadeView,
      page: _i6.LoginFireBrigadeView,
    ),
    _i1.RouteDef(
      Routes.activeServiceView,
      page: _i7.ActiveServiceView,
    ),
    _i1.RouteDef(
      Routes.requestEmergencyView,
      page: _i8.RequestEmergencyView,
    ),
    _i1.RouteDef(
      Routes.userProfileView,
      page: _i9.UserProfileView,
    ),
    _i1.RouteDef(
      Routes.welcomeUserView,
      page: _i10.WelcomeUserView,
    ),
    _i1.RouteDef(
      Routes.mainMenuView,
      page: _i11.MainMenuView,
    ),
    _i1.RouteDef(
      Routes.requestAmbulanceView,
      page: _i12.RequestAmbulanceView,
    ),
    _i1.RouteDef(
      Routes.requestFireView,
      page: _i13.RequestFireView,
    ),
    _i1.RouteDef(
      Routes.allRequestCaptainView,
      page: _i14.AllRequestCaptainView,
    ),
    _i1.RouteDef(
      Routes.fireRequestCaptainView,
      page: _i15.FireRequestCaptainView,
    ),
    _i1.RouteDef(
      Routes.ambulanceRequestCaptainView,
      page: _i16.AmbulanceRequestCaptainView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashScreenView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i2.SplashScreenView(),
        settings: data,
        maintainState: false,
      );
    },
    _i3.LoginUserView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i3.LoginUserView(),
        settings: data,
        maintainState: false,
      );
    },
    _i4.LoginAmbulanceView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i4.LoginAmbulanceView(),
        settings: data,
        maintainState: false,
      );
    },
    _i5.LoginPoliceView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.LoginPoliceView(),
        settings: data,
        maintainState: false,
      );
    },
    _i6.LoginFireBrigadeView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i6.LoginFireBrigadeView(),
        settings: data,
        maintainState: false,
      );
    },
    _i7.ActiveServiceView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i7.ActiveServiceView(),
        settings: data,
        maintainState: false,
      );
    },
    _i8.RequestEmergencyView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i8.RequestEmergencyView(),
        settings: data,
        maintainState: false,
      );
    },
    _i9.UserProfileView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i9.UserProfileView(),
        settings: data,
        maintainState: false,
      );
    },
    _i10.WelcomeUserView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i10.WelcomeUserView(),
        settings: data,
        maintainState: false,
      );
    },
    _i11.MainMenuView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i11.MainMenuView(),
        settings: data,
        maintainState: false,
      );
    },
    _i12.RequestAmbulanceView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i12.RequestAmbulanceView(),
        settings: data,
        maintainState: false,
      );
    },
    _i13.RequestFireView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i13.RequestFireView(),
        settings: data,
        maintainState: false,
      );
    },
    _i14.AllRequestCaptainView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i14.AllRequestCaptainView(),
        settings: data,
        maintainState: false,
      );
    },
    _i15.FireRequestCaptainView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i15.FireRequestCaptainView(),
        settings: data,
        maintainState: false,
      );
    },
    _i16.AmbulanceRequestCaptainView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i16.AmbulanceRequestCaptainView(),
        settings: data,
        maintainState: false,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i18.NavigationService {
  Future<dynamic> navigateToSplashScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginUserView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginUserView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginAmbulanceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginAmbulanceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginPoliceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginPoliceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginFireBrigadeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginFireBrigadeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToActiveServiceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.activeServiceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRequestEmergencyView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.requestEmergencyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToUserProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.userProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWelcomeUserView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.welcomeUserView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMainMenuView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.mainMenuView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRequestAmbulanceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.requestAmbulanceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRequestFireView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.requestFireView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAllRequestCaptainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.allRequestCaptainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFireRequestCaptainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.fireRequestCaptainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAmbulanceRequestCaptainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.ambulanceRequestCaptainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.splashScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginUserView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginUserView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginAmbulanceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginAmbulanceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginPoliceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginPoliceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginFireBrigadeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginFireBrigadeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithActiveServiceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.activeServiceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRequestEmergencyView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.requestEmergencyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithUserProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.userProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWelcomeUserView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.welcomeUserView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMainMenuView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.mainMenuView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRequestAmbulanceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.requestAmbulanceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRequestFireView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.requestFireView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAllRequestCaptainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.allRequestCaptainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFireRequestCaptainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.fireRequestCaptainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAmbulanceRequestCaptainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.ambulanceRequestCaptainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}