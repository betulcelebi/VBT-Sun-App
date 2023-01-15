import 'package:get/get.dart';
import 'package:vbt_sun_app_project/modules/work_detail/work_detail_controller.dart';

class WorkDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WorkDetailController());
  }
}
