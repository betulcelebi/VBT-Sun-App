import 'package:get/get.dart';
import 'package:vbt_sun_app_project/models/my_works_model.dart';

import '../../shared/services/services.dart';

class WorksController extends GetxController {
  List filters = [
    {"id": "1,2,5", "description": "Hepsi"},
    {"id": "1", "description": "Bekliyor"},
    {"id": "2", "description": "Tamamlandı"},
    {"id": "5", "description": "Reddedildi"}
  ];
  Services servis = Services();
  MyWorksResponse? myWorksResponse = MyWorksResponse();

  @override
  void onInit() {
    getMyWorkInfo("1");
    super.onInit();
  }

  // void name(params) {
  //   getMyWorkInfo(filters[1]['id'], '');
  // }

  getMyWorkInfo(String workStatuArray) async {
    myWorksResponse = await servis.getMyWorks(workStatuArray);
    update();
  }
}
