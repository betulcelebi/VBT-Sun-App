import 'package:get/get.dart';
import 'package:vbt_sun_app_project/modules/team/team_controller.dart';

class TeamBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TeamController());
  }
}