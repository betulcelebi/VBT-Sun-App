import 'package:get/get.dart';

import 'vacation_detail_controller.dart';


class VacationDetailBinding extends Bindings{
  @override 
  void dependencies(){
    Get.put(VacationDetailController());
  }
}