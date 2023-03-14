import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:squip/app/app.locator.dart';
import 'package:squip/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AmbulanceRequestCaptainViewModel extends BaseViewModel {
  final nav = locator<NavigationService>();
  getRequests() {
    var ref = FirebaseFirestore.instance
        .collection("emeregencyRequest")
        .where("emergency", isEqualTo: "Ambulance");
    return ref.get();
  }

  logout() {
    nav.navigateToMainMenuView();
  }
}