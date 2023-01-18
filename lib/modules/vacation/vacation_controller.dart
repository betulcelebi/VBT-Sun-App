import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vbt_sun_app_project/init/cache_manager.dart';
import 'package:vbt_sun_app_project/models/employee_leave_model.dart';
import 'package:vbt_sun_app_project/models/sub_employees_leave_model.dart';
import 'package:vbt_sun_app_project/modules/dashboard/dashboard_controller.dart';

import '../../shared/services/services.dart';

class VacationController extends GetxController {
  DashboardController dashboardController = Get.put(DashboardController());
  Services servis = Services();
  int groupValue = 0;
  EmployeeLeave? employeeLeaveResponse = EmployeeLeave();
  PageController pageController = PageController(
    initialPage: 0,
  );
  SubEmployeesLeaveResponse? subEmployeesLeaveResponse;

  @override
  void onInit() {
    getEmployeeLeaveInfo();
    super.onInit();
  }

  getEmployeeLeaveInfo() async {
    employeeLeaveResponse = await servis.getEmployeeLeave();
    bool? isManager = CacheManager.instance.getValue("isManager");
    if (isManager == true) {
      subEmployeesLeaveResponse = await servis.getSubEmployeesLeave(
        employeeLeaveResponse
            ?.data?.employeeEarnedRightsList?.first.iDHREMPLOYEE,
      );
    }
    update();
  }
}
