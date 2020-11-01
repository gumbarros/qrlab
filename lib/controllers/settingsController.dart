import 'package:get/get.dart';

class SettingsController extends GetxController {

  static SettingsController get to => Get.find();

  String lang;

  void upd() {
    update();
  }
}