import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:squip/screens/user_side/request_emergency_user/request_emergency_user_view_model.dart';
import 'package:squip/utils/color_constant.dart';
import 'package:stacked/stacked.dart';

class RequestEmergencyView extends StatelessWidget {
  // final LatLng currentPosition = LatLng(25.1193, 55.3773);
  // late GoogleMapController mapController;
  Map<String, Marker> _marker = {};
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RequestEmergencyViewModel>.reactive(
      viewModelBuilder: () => RequestEmergencyViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: GoogleMap(
          initialCameraPosition:
              CameraPosition(target: viewModel.currentPosition, zoom: 14),
          onMapCreated: (controller) {
            viewModel.mapController = controller;
            viewModel.addMarker('test', viewModel.currentPosition, _marker);
          },
          markers: _marker.values.toSet(),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            viewModel.takingCurrentLocation(_marker);
          },
          label: const Text("Current Location"),
          icon: const Icon(Icons.location_history),
        ),
      ),
    );
  }
}