import 'package:get/get.dart';
import 'package:vbt_sun_app_project/models/my_request_model.dart';

import '../../shared/services/services.dart';

class MyRequestController extends GetxController {
  Services servis = Services();
  List filters = [
    {"id": "-1", "description": "Hepsi"},
    {"id": "0,4", "description": "Süreç Devam Ediyor / Revize edildi"},
    {"id": "0", "description": "Süreç Devam Ediliyor"},
    {"id": "1", "description": "Onaylandı"},
    {"id": "2", "description": "Reddedildi"},
    {"id": "4", "description": "Revize Edilsi"},
    {"id": "6", "description": "Geri Gönderildi"},
  ];

  @override
  void onInit() {
    getMyRequest("0,4");
    super.onInit();
  }

  void name(params) {
    getMyRequest(filters[1]['id']);
  }

  MyRequestResponse? myRequestResponse = MyRequestResponse();
  getMyRequest(String workStatuArray) async {
    myRequestResponse = await servis.getMyRequest(workStatuArray);
    update();
  }
}
