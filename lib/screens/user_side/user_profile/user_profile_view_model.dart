import 'package:squip/app/app.locator.dart';
import 'package:squip/services/takingLoggedInUserName.dart';
import 'package:stacked/stacked.dart';

class UserProfileViewModel extends BaseViewModel {
  final nav = locator<takingLoggedInUserNameService>();
}