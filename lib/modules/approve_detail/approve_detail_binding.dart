import 'package:get/get.dart';
import 'package:vbt_sun_app_project/modules/approve_detail/approve_detail_controller.dart';

class ApproveDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApproveDetailController());
  }
}
