import 'package:squip/app/app.locator.dart';
import 'package:squip/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SelectEmergencyUserViewModel extends BaseViewModel {
  final nav = locator<NavigationService>();
  selectPolice() {
    nav.navigateToRequestEmergencyView();
    rebuildUi();
  }

  selectAmbulance() {
    nav.navigateToRequestAmbulanceView();
    rebuildUi();
  }

  selectFire() {
    nav.navigateToRequestFireView();
    rebuildUi();
  }
}