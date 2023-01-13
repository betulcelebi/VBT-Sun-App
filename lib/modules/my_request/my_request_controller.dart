import 'package:get/get.dart';
import 'package:vbt_sun_app_project/models/my_request_model.dart';

import '../../shared/services/services.dart';

class MyRequestController extends GetxController {
  Services servis = Services();
List filters=[{"id":"-1", "textt":"hepsi"},{"id":"0", "text":"dsds"}];
    
  MyRequestResponse? myRequestResponse = MyRequestResponse();
  @override
  void onInit() {
    getMyRequest("-1");
    super.onInit();
  }

void name(params) {
  getMyRequest(filters[0]['id']);
    ;
}

  getMyRequest(String statuArray) async {
    myRequestResponse = await servis.getMyRequest(statuArray);
    update();
  }
}
