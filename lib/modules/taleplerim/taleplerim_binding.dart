import 'package:get/get.dart';
import 'package:vbt_sun_app_project/modules/taleplerim/taleplerim_controller.dart';

class TaleplerimBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TaleplerimController());
  }
}