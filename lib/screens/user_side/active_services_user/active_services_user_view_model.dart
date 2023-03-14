import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:squip/screens/user_side/active_services_user/active_services_user_view.dart';
import 'package:squip/screens/user_side/user_profile/user_profile_view.dart';
import 'package:stacked/stacked.dart';



class ActiveServiceViewModel extends BaseViewModel {
  getActiveRequest() {
    CollectionReference ref =
        FirebaseFirestore.instance.collection("emeregencyRequest");
    return ref.get();
  }
}