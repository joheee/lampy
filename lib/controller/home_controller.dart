import 'package:firebase_database/firebase_database.dart';


class HomeController {

  static DatabaseReference switchQuery = FirebaseDatabase.instance.ref('lamp');

  static void handleSwitchChange(bool isSwitched){
    HomeController.switchQuery.set({
      'state':!isSwitched
    });
  }
}