import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';

class FireRequestCaptainViewModel extends BaseViewModel {
  getRequests() {
    var ref = FirebaseFirestore.instance
        .collection("emeregencyRequest")
        .where("emergency", isEqualTo: "Fire Brigade");
    return ref.get();
  }
}