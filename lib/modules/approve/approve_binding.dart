import 'package:get/get.dart';

import 'approve_controller.dart';

class ApproveBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApproveController());
  }
}