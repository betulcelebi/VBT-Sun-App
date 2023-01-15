import 'package:get/get.dart';
import 'package:vbt_sun_app_project/models/my_request_detail_model.dart';
import 'package:vbt_sun_app_project/modules/my_request/my_request_controller.dart';

import 'package:vbt_sun_app_project/shared/services/services.dart';

class MyRequestDetailController extends GetxController {
  MyRequestDetailController({required this.idMaster});
    Services servis = Services();
  Map? myRequestDetailResponse;
   int idMaster = 0;

  getMyRequestDetail() async {
    myRequestDetailResponse = await servis.getRequestDetail(idMaster);
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getMyRequestDetail();
  }
}
