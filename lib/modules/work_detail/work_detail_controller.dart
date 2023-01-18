import 'package:get/get.dart';
import 'package:vbt_sun_app_project/modules/works/works_controller.dart';

import '../../models/my_works_model.dart';

class WorkDetailController extends GetxController {
  PendingJobsList? pendingJobsList;

  getPendingJobsList(PendingJobsList list) {
    pendingJobsList = list;
  }

  @override
  void onInit() {
    var 
    argumentData = Get.arguments;
    getPendingJobsList(argumentData['pendingJobsList']);
    super.onInit();
  }
}
