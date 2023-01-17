import 'package:get/get.dart';
import 'package:vbt_sun_app_project/shared/services/services.dart';

class ApproveDetailController extends GetxController {
  ApproveDetailController({required this.idMaster});
  Services servis = Services();
  Map? approveDetailResponse;
  int idMaster = 0;

  getApproveDetailInfo() async {
    approveDetailResponse = await servis.getApproveDetail(idMaster);
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getApproveDetailInfo();
  }
}
