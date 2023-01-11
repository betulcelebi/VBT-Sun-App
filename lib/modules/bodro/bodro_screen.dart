import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vbt_sun_app_project/modules/bodro/bodro_controller.dart';

class Bodro extends GetView<BordroController> {
  const Bodro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Obx(() => controller.isLoading.value? Text(controller.documentResponse!.data![0].dOCUMENTPERIOD.toString()):CircularProgressIndicator(color: Colors.red,)),
     ),
    );
  }
}