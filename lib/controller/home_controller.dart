import 'package:firebase_database/firebase_database.dart';
import 'package:lampy/controller/database_controller.dart';


class HomeController {

  static DatabaseReference switchQuery = FirebaseDatabase.instance.ref('lamp');
  static DatabaseReference voltQuery = FirebaseDatabase.instance.ref('volt');

  static void handleChangeInterface(bool isSwitched, double volt) {
    HomeController.handleSwitchChange(isSwitched);
    HomeController.handleVoltChange(volt);
    DatabaseController.updateState(isSwitched);
    DatabaseController.updateVoltage(volt);
  }

  static void handleSwitchChange(bool isSwitched){
    HomeController.switchQuery.set({
      'state':!isSwitched
    });
  }

  static void handleVoltChange(double volt){
    HomeController.voltQuery.set({
      'state':volt
    });
  }
}