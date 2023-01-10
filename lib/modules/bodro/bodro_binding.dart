import 'package:get/get.dart';

import 'bodro_controller.dart';

class BodroBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BordroController());
  }
}