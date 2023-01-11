import 'package:get/get.dart';
import 'package:vbt_sun_app_project/models/home_page_info_model.dart';
import 'package:vbt_sun_app_project/shared/services/services.dart';

class DashboardController extends GetxController {
  RxBool isPageInfoLoading = false.obs;
  Services servis = Services();
  HomePageInfoResponse? homeInfoResponse = HomePageInfoResponse();
  @override
  void onInit() {
    getHomeInfo();
    super.onInit();
  }

  getHomeInfo() async {
    isPageInfoLoading.value = false;
    homeInfoResponse = await servis.getHomePageInfo();
    isPageInfoLoading.value = true;
  }
}
