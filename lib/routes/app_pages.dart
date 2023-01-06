import 'package:get/get.dart';
import 'package:vbt_sun_app_project/modules/dashboard/dashboard_binding.dart';
import 'package:vbt_sun_app_project/modules/dashboard/dashboard_screen.dart';

import '../modules/login/login_binding.dart';
import '../modules/login/login_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
        name: Routes.DASHBOARD,
        page: () => DashboardScreen(),
        binding: DashboardBinding())
  ];
}
