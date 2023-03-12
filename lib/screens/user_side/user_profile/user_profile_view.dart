import 'package:flutter/material.dart';
import 'package:squip/screens/user_side/user_profile/user_profile_view_model.dart';
import 'package:stacked/stacked.dart';

class UserProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UserProfileViewModel>.reactive(
        viewModelBuilder: () => UserProfileViewModel(),
        builder: (context, viewModel, child) => Scaffold());
  }
}