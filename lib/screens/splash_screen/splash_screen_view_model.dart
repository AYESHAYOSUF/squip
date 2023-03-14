import 'package:squip/app/app.locator.dart';
import 'package:squip/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashScreenViewModel extends BaseViewModel {
  final nav = locator<NavigationService>();

  navToMainMenu() {
    nav.navigateToMainMenuView();
    rebuildUi();
  }
}