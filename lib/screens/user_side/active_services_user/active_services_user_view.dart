import 'package:flutter/material.dart';
import 'package:squip/screens/user_side/active_services_user/active_services_user_view_model.dart';
import 'package:stacked/stacked.dart';

class ActiveServiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ActiveServiceViewModel>.reactive(
        viewModelBuilder: () => ActiveServiceViewModel(),
        builder: (context, viewModel, child) => Scaffold());
  }
}