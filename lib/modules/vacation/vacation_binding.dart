import 'package:get/get.dart';
import 'package:vbt_sun_app_project/modules/vacation/vacation_controller.dart';

class VacationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(VacationController());
  }
}