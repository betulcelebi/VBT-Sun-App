import 'package:get/get.dart';
import 'package:vbt_sun_app_project/models/home_page_info_model.dart';
import 'package:vbt_sun_app_project/shared/services/services.dart';

class DashboardController extends GetxController {
  Services servis = Services();
  HomePageInfoResponse? homeInfoResponse = HomePageInfoResponse();
  @override
  void onInit() {
    getHomeInfo();
    super.onInit();
  }

  getHomeInfo() async {
    homeInfoResponse = await servis.getHomePageInfo();
    update();
  }
}
