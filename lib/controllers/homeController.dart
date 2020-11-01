import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qrlab/widgets/qrLanguageDialog.dart';

class HomeController extends GetxController {

  static HomeController get to => Get.find();

  final GetStorage getStorage = GetStorage();
  @override
  void onReady() {
    if(getStorage.read("welcome") == null){
      Get.dialog(LanguageDialog());
      getStorage.write("welcome", true);
    }
    super.onReady();
  }


  void upd() {
    update();
  }
}