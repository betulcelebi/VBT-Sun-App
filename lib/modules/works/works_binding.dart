import 'package:get/get.dart';
import 'package:vbt_sun_app_project/modules/works/works_controller.dart';

class WorksBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WorksController());
  }
}