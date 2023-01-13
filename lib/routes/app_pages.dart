import 'package:get/get.dart';
import 'package:vbt_sun_app_project/modules/approve/approve_screen.dart';
import 'package:vbt_sun_app_project/modules/dashboard/dashboard_binding.dart';
import 'package:vbt_sun_app_project/modules/dashboard/dashboard_screen.dart';

import 'package:vbt_sun_app_project/modules/bodro_detail/bordro_detail_binding.dart';
import 'package:vbt_sun_app_project/modules/vacation/vacation_screen.dart';

import '../modules/approve/approve_binding.dart';
import '../modules/bodro/bodro_binding.dart';
import '../modules/bodro/bodro_screen.dart';
import '../modules/bodro_detail/bordro_detail_screen.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_screen.dart';
import '../modules/vacation/vacation_binding.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
        name: Routes.DASHBOARD,
        page: () => DashboardScreen(),
        binding: DashboardBinding())
,
        
        GetPage(name: Routes.BORDRODETAIL,
        page: () => const BordroDetailScreen(),
        binding: BordroDetailBinding()),

        GetPage(
        name: Routes.BODRO,
        page: () => const Bodro(),
        binding: BodroBinding()),

        GetPage(
        name: Routes.VACATION,
        page: () => 
        //const 
        Vacation(),
        binding: VacationBinding()),

        GetPage(
        name: Routes.APPROVE,
        page: () => const Approve(),
        binding: ApproveBinding()),
  ];
}
