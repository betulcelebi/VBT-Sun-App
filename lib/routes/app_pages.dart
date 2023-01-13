import 'package:get/get.dart';
import 'package:vbt_sun_app_project/modules/dashboard/dashboard_binding.dart';
import 'package:vbt_sun_app_project/modules/dashboard/dashboard_screen.dart';

import 'package:vbt_sun_app_project/modules/bodro_detail/bordro_detail_binding.dart';
import 'package:vbt_sun_app_project/modules/my_request/my_request_binding.dart';
import 'package:vbt_sun_app_project/modules/my_request/my_request_screen.dart';
import 'package:vbt_sun_app_project/modules/vacation/vacation_screen.dart';
import 'package:vbt_sun_app_project/modules/works/works_screen.dart';

import '../modules/bodro/bodro_binding.dart';
import '../modules/bodro/bodro_screen.dart';
import '../modules/bodro_detail/bordro_detail_screen.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_screen.dart';
import '../modules/vacation/vacation_binding.dart';
import '../modules/works/works_binding.dart';

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
        name: Routes.WORKS,
        page: () => const Works(),
        binding: WorksBinding()),
         GetPage(
        name: Routes.MYREQUEST,
        page: () => const MyRequestScreen(),
        binding: MyRequestBinding()),

  ];
}
