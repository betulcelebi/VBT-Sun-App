import 'package:get/get.dart';

import 'bordro_detail_controller.dart';

class BordroDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BordroDetailController());
  }
}
