import 'package:get/get.dart';

import 'my_request_detail_controller.dart';

class MyRequestDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MyRequestDetailController());
  }
}
