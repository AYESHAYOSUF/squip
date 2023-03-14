import 'package:squip/app/app.locator.dart';
import 'package:squip/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MainMenuViewModel extends BaseViewModel {
  final movetoUserLogin = locator<NavigationService>();
  final movetopoliceLogin = locator<NavigationService>();
  final movetoAmbulanceLogin = locator<NavigationService>();
  final movetoFireLogin = locator<NavigationService>();

  gotoUser() {
    movetoUserLogin.navigateToLoginUserView();
    rebuildUi();
  }

  gotoPolice() {
    movetoUserLogin.navigateToLoginPoliceView();
    rebuildUi();
  }

  gotoFire() {
    movetoUserLogin.navigateToLoginFireBrigadeView();
    rebuildUi();
  }

  gotoAmbulance() {
    movetoUserLogin.navigateToLoginAmbulanceView();
    rebuildUi();
  }
}

