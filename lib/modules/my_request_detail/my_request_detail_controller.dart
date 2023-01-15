import 'package:get/get.dart';
import 'package:vbt_sun_app_project/models/my_request_detail_model.dart';

import 'package:vbt_sun_app_project/shared/services/services.dart';

class MyRequestDetailController extends GetxController {
  Services servis = Services();
  MyRequestDetailResponse myRequestDetailResponse = MyRequestDetailResponse();

  getMyRequestDetail(int idMaster) async {
    myRequestDetailResponse = await servis.getRequestDetail(idMaster);
    update();
  }
}
