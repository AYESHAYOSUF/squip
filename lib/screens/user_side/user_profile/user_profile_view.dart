import 'package:flutter/material.dart';
import 'package:squip/custom_widgets/app_bar.dart';
import 'package:squip/custom_widgets/profile_list_tile.dart';
import 'package:squip/screens/user_side/user_profile/user_profile_view_model.dart';
import 'package:squip/utils/color_constant.dart';
import 'package:squip/utils/image_constant.dart';
import 'package:stacked/stacked.dart';

class UserProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UserProfileViewModel>.reactive(
        viewModelBuilder: () => UserProfileViewModel(),
        builder: (context, viewModel, child) => Scaffold(
              appBar: customerAppBar("My Profile"),
              body: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        color: redColor,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 250,
                        height: 80,
                        child: ListView(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sana Memon",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(viewModel.nav.name)
                                    ],
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: redColor,
                                    foregroundColor: whiteColor,
                                    child: Icon(Icons.edit),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      profileListTile(
                          "My Active Services", Icons.shop_2_outlined),
                      profileListTile("My Address", Icons.location_city),
                      profileListTile("Refer a friend", Icons.child_friendly),
                      profileListTile("Terms & Condition", Icons.read_more),
                      profileListTile("About", Icons.more),
                      profileListTile("Logout", Icons.logout),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 20),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: whiteColor,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(imgSlider1),
                        backgroundColor: redColor,
                        radius: 45,
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}