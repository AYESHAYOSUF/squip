import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:squip/app/app.locator.dart';
import 'package:squip/app/app.router.dart';
import 'package:squip/services/takingLoggedInUserName.dart';
import 'package:squip/utils/image_constant.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';

class RequestAmbulanceViewModel extends BaseViewModel {
  late GoogleMapController mapController;
  final nav = locator<NavigationService>();
  final dialogue = locator<DialogService>();
  final user = locator<takingLoggedInUserNameService>();

  opendialogue() {
    dialogue.showDialog(
        buttonTitle: "Ok",
        title: "your Request sent to Ambulance, We'll arrive soon");
    rebuildUi();
  }

  makingPhoneCall() async {
    var url = Uri.parse("tel:2345678");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  insertRequestAmbulance() async {
    CollectionReference ref =
        FirebaseFirestore.instance.collection("emeregencyRequest");
    await ref.add({
      "name": user.name,
      "emergency": "Ambulance",
      "date": DateTime.now().toString()
    });
    print("Ambulance request inserted");
  }

  goToWelcomeUser() {
    nav.navigateToWelcomeUserView();
  }
  // NearbyPlacesResponse nearbyPlacesResponse = NearbyPlacesResponse();

  addMarker(String customText, LatLng location, Map _marker) async {
    var markerIcon =
        await BitmapDescriptor.fromAssetImage(ImageConfiguration(), icHospital);
    var marker = Marker(
      markerId: MarkerId(customText),
      position: location,
      infoWindow: InfoWindow(title: customText),
      // icon: markerIcon
    );

    _marker[customText] = marker;
    rebuildUi();
  }

  addMarkerFire(String customText, LatLng location, Map _marker) async {
    var markerIcon =
        await BitmapDescriptor.fromAssetImage(ImageConfiguration(), icHospital);
    var marker = Marker(
        markerId: MarkerId(customText),
        position: location,
        infoWindow: InfoWindow(title: customText),
        icon: markerIcon);

    _marker[customText] = marker;
    rebuildUi();
  }
}