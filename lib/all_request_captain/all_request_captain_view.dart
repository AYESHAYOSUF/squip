import 'package:flutter/material.dart';
import 'package:squip/all_request_captain/all_request_captain_view_model.dart';
import 'package:squip/custom_widgets/app_bar.dart';
import 'package:squip/custom_widgets/custom_floating_button.dart';
import 'package:squip/custom_widgets/profile_list_tile.dart';
import 'package:squip/utils/color_constant.dart';
import 'package:stacked/stacked.dart';

class AllRequestCaptainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AllRequestCaptainViewModel>.reactive(
        onViewModelReady: (viewModel) {
          viewModel.getRequests();
        },
        viewModelBuilder: () => AllRequestCaptainViewModel(),
        builder: (context, viewModel, child) => Scaffold(
            appBar: customerAppBar("All Requests"),
            body: FutureBuilder(
              future: viewModel.getRequests(),
              builder: ((context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.docs.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data.docs[index]["emergency"]),
                        subtitle: Text(snapshot.data.docs[index]["name"]),
                        trailing: Text(
                          ((snapshot.data.docs[index]["date"]).toString()),
                          style: TextStyle(fontSize: 14),
                        ),
                      );
                    },
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
            ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {
                viewModel.logout();
              },
              label: Text("Sign out"),
              focusColor: redColor,
              backgroundColor: redColor,
            )));
  }
}