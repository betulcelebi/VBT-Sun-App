import 'package:get/get.dart';
import 'package:vbt_sun_app_project/modules/teamdetail/teamdetail_controller.dart';

class TeamDetaiilBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TeamDetailController());
  }
}