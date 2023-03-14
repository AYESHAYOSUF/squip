import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:squip/custom_widgets/custom_button.dart';
import 'package:squip/screens/user_side/request_emergency_user/request_emergency_user_view_model.dart';
import 'package:squip/utils/color_constant.dart';
import 'package:stacked/stacked.dart';

class RequestEmergencyView extends StatelessWidget {
  final LatLng currentPosition = LatLng(24.9141, 67.0583);
  final LatLng nearPoliceStation1 = LatLng(24.915684116, 67.063230648);
  final LatLng nearPoliceStation2 = LatLng(24.9011, 67.0458);
  final LatLng nearPoliceStation3 = LatLng(24.9155, 67.0194);

  // late GoogleMapController mapController;
  Map<String, Marker> _marker = {};
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RequestEmergencyViewModel>.reactive(
      viewModelBuilder: () => RequestEmergencyViewModel(),
      builder: (context, viewModel, child) => Scaffold(
          body: GoogleMap(
            initialCameraPosition:
                CameraPosition(target: currentPosition, zoom: 14),
            onMapCreated: (controller) {
              viewModel.mapController = controller;
              viewModel.addMarker(
                  'My current Location', currentPosition, _marker);
              viewModel.addMarkerPolice(
                  "Nearest police station", nearPoliceStation1, _marker);
            },
            markers: _marker.values.toSet(),
          ),
          floatingActionButton: Row(children: [
            FloatingActionButton.extended(
              heroTag: "btn1",
              onPressed: () {
                print("clicking");
                viewModel.insertRequestPolice();
                viewModel.goToWelcomeUser();
                viewModel.opendialogue();
              },
              label: const Text("Request"),
              icon: const Icon(Icons.location_history),
            ),
            FloatingActionButton.extended(
              heroTag: "btn2",
              onPressed: () {
                print("calling");
                viewModel.makingPhoneCall();
              },
              label: const Text("Call"),
              icon: const Icon(Icons.location_history),
            ),
          ])),
    );
  }
}