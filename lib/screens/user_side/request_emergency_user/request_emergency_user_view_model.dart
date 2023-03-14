import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:squip/app/app.locator.dart';
import 'package:squip/app/app.router.dart';
import 'package:squip/services/takingLoggedInUserName.dart';
import 'package:squip/utils/image_constant.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';

class RequestEmergencyViewModel extends BaseViewModel {
  final LatLng currentPosition = LatLng(25.1193, 55.3773);
  late GoogleMapController mapController;
  var currentLatitude;
  var currentLongitude;
  // NearbyPlacesResponse nearbyPlacesResponse = NearbyPlacesResponse();

  final dialogue = locator<DialogService>();

  final nav = locator<NavigationService>();
  final user = locator<takingLoggedInUserNameService>();
  // gotoActiveServices() {
  //   nav.navigateToActiveServiceView();
  // }
  grabbingLoggedinUserName() {
    user.userName();
  }

  opendialogue() {
    dialogue.showDialog(
        buttonTitle: "Ok",
        title: "your Request sent to police, We'll arrive soon");
    rebuildUi();
  }

  insertRequestPolice() async {
    CollectionReference ref =
        FirebaseFirestore.instance.collection("emeregencyRequest");
    await ref.add({
      "name": user.name,
      "emergency": "police",
      "date": DateTime.now().toString()
    });
  }

  makingPhoneCall() async {
    var url = Uri.parse("tel:2345678");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  goToWelcomeUser() {
    nav.navigateToWelcomeUserView();
  }

  addMarker(String customText, LatLng location, Map _marker) async {
    var markerIcon =
        await BitmapDescriptor.fromAssetImage(ImageConfiguration(), icPolice);
    var marker = Marker(
      markerId: MarkerId(customText),
      position: location,
      infoWindow: InfoWindow(title: customText),
      // icon: markerIcon
    );

    _marker[customText] = marker;
    rebuildUi();
  }

  addMarkerPolice(String customText, LatLng location, Map _marker) async {
    var markerIcon =
        await BitmapDescriptor.fromAssetImage(ImageConfiguration(), icPolice);
    var marker = Marker(
        markerId: MarkerId(customText),
        position: location,
        infoWindow: InfoWindow(title: customText),
        icon: markerIcon);

    _marker[customText] = marker;
    rebuildUi();
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied');
    }

    Position position = await Geolocator.getCurrentPosition();

    return position;
  }

  takingCurrentLocation(var markers) async {
    Position position = await _determinePosition();

    currentLatitude = position.latitude;
    currentLongitude = position.longitude;

    mapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(24.9141, 67.0583), zoom: 14)));

    // markers.clear();

    markers.add(Marker(
        markerId: const MarkerId('currentLocation'),
        position: LatLng(position.latitude, position.longitude)));

    rebuildUi();
  }

  getNearByPolice(String query) async {
    Uri uri = Uri.https(
        "maps.googleapis.com",
        'maps/api/place/autocomplete/json',
        {"input": query, "key": "AIzaSyCb_fM2YIg-5lB6PH2eDsPG4zEjcGQdtFc"});
    String? response = await fetchUrl(uri);

    if (response != null) {
      print(response);
    }
  }

  static Future<String?> fetchUrl(Uri uri,
      {Map<String, String>? headers}) async {
    try {
      final response = await http.get(uri, headers: headers);
      if (response.statusCode == 200) {
        return response.body;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}