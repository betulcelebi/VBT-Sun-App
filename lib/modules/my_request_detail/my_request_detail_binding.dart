import 'package:get/get.dart';

import 'my_request_detail_controller.dart';

class MyRequestDetailBinding extends Bindings {
  int? idMaster;
  MyRequestDetailBinding({required idMaster});
  @override
  void dependencies() {
    Get.put(MyRequestDetailController(idMaster: idMaster!,),);
  }
}
