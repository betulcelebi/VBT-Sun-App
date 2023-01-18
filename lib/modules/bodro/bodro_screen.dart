import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:vbt_sun_app_project/modules/bodro/bodro_controller.dart';

class Bodro extends GetView<BordroController> {
  const Bodro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(8.h),
        child: AppBar(
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back, size: 4.h, color: Colors.white)),
          backgroundColor: const Color(0xff567DF4),
        ),
      ),
      body: Obx(() => controller.isBordroViewLoading.value
          ? Container(child: SfPdfViewer.memory(controller.resultPdf!))
          : Center(child: CircularProgressIndicator())),
    );
  }
}
