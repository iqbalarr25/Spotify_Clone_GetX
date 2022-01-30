import 'package:get/get.dart';
import 'form_controller.dart';
import 'home_controller.dart';

class SpotifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FormController(), permanent: true);
    Get.put(HomeController(), permanent: true);
  }
}