import 'package:get/get.dart';
import 'package:vbt_sun_app_project/models/employee_leave_model.dart';
import 'package:vbt_sun_app_project/modules/dashboard/dashboard_controller.dart';

import '../../shared/services/services.dart';

class VacationController extends GetxController {
  DashboardController dashboardController = Get.put(DashboardController());
  // Services servis = Services();

  // EmployeeLeaveResponse? employeeLeaveResponse = EmployeeLeaveResponse();
  // @override
  // void onInit() {
  //   getEmployeeLeaveInfo();
  //   super.onInit();
  // }

  // getEmployeeLeaveInfo() async {
  //   employeeLeaveResponse = await servis.getEmployeeLeave();
  //   update();
  // }
}
