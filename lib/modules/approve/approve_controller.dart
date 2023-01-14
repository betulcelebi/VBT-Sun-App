import 'package:get/get.dart';
import 'package:vbt_sun_app_project/shared/services/services.dart';

import '../../models/approve_model.dart';

class ApproveController extends GetxController {
  Services servis = Services();

  @override
  void onInit() {
    getApprove();
    super.onInit();
  }

  ApproveResponse? approveResponse = ApproveResponse();
  getApprove() async {
    approveResponse = await servis.getApprove();
    update();
  }
}
 