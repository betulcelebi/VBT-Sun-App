import 'package:get/get.dart';
import 'package:vbt_sun_app_project/models/my_team_model.dart';

import '../../init/cache_manager.dart';
import '../../models/home_page_info_model.dart';
import '../../shared/services/services.dart';

class TeamController extends GetxController {
  Services servis = Services();
  MyTeamResponse? myTeam = MyTeamResponse();

  void onInit() {
    var argumentData = Get.arguments;

    getTeam(argumentData['id']);
    super.onInit();
  }

  getTeam(int id) async {
    myTeam = await servis.myTeam(id);
    update();
  }
}
