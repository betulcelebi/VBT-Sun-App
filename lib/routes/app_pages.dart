import 'package:get/get.dart';
import 'package:vbt_sun_app_project/modules/bodro_detail/bordro_detail_binding.dart';

import '../modules/bodro/bodro_binding.dart';
import '../modules/bodro/bodro_screen.dart';
import '../modules/bodro_detail/bordro_detail_screen.dart';
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
        name: Routes.BORDRODETAIL,
        page: () => BordroDetailScreen(),
        binding: BordroDetailBinding()),

        GetPage(
        name: Routes.BODRO,
        page: () => Bodro(),
        binding: BodroBinding()),
  ];
}
