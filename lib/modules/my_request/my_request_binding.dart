import 'package:get/get.dart';
import 'package:vbt_sun_app_project/modules/my_request/my_request_controller.dart';

class MyRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MyRequestController());
  }
}
