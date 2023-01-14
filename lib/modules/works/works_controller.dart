import 'package:get/get.dart';
import 'package:vbt_sun_app_project/models/my_works_model.dart';

import '../../shared/services/services.dart';

class WorksController extends GetxController {
  Services servis = Services();
  MyWorksResponse? myWorksResponse = MyWorksResponse();
  @override
  void onInit() {
    getMyWorkInfo();
    super.onInit();
  }

  getMyWorkInfo() async {
    myWorksResponse = await servis.getMyWorks();
    update();
  }
}
