

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

import '../../../utils/image_constant.dart';

class RequestEmergencyViewModel extends BaseViewModel {
  final LatLng currentPosition = LatLng(25.1193, 55.3773);
  late GoogleMapController mapController;

  addMarker(String id, LatLng location, Map _marker) async {
    var markerIcon =
        await BitmapDescriptor.fromAssetImage(ImageConfiguration(), icPolice);
    var marker = Marker(
      markerId: MarkerId(id),
      position: location,
      infoWindow: InfoWindow(title: "Police Station"),
    );

    _marker[id] = marker;
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

    mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(position.latitude, position.longitude), zoom: 14)));

    markers.clear();

    markers.add(Marker(
        markerId: const MarkerId('currentLocation'),
        position: LatLng(position.latitude, position.longitude)));

    rebuildUi();
  }
}