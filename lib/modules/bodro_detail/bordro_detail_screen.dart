import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/utils/constant.dart';

import '../../routes/app_pages.dart';
import 'bordro_detail_controller.dart';

class BordroDetailScreen extends GetView<BordroDetailController> {
  const BordroDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: BordroDetailConstant.mainColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 43.75.h,
                height: 13.h,
                color: const Color(0xff567DF4),
                child: Padding(
                  padding: EdgeInsets.only(top: 3.h, left: 1.h, right: 1.8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back,
                              size: 4.h, color: Colors.white)),
                    ],
                  ),
                ),
              ),

              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BordroDetailConstant().generalContainer,
                child: Obx(() => controller.isLoading.value
                    ? ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.documentResponse.data!.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(1.h),
                                child: GestureDetector(
                                  onTap: () {
                                    controller.bordro.getPayrollViewDocument(
                                        controller.documentResponse.data![index]
                                            .dOCUMENTYEAR,
                                        controller.documentResponse.data![index]
                                            .dOCUMENTMONTH,
                                        controller
                                            .documentResponse.data![index].uID);
                                    Get.toNamed(Routes.BODRO);
                                  },
                                  child: Container(
                                    decoration:
                                        BordroDetailConstant().insideCotainer,
                                    width: 85.w,
                                    height: 12.h,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 2.h, top: 1.7.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Bordro Özeti",
                                            style: BordroDetailConstant()
                                                .salarytext1,
                                            // TextStyle(
                                            //   fontWeight: FontWeight.bold,
                                            // ),
                                          ),
                                          ListTile(
                                            contentPadding:
                                                const EdgeInsets.only(
                                                    right: 25),
                                            minLeadingWidth: 2,
                                            enabled: true,
                                            leading: Container(
                                              width: 1.w,
                                              height: 3.h,
                                              // color: Color(0xff567DF4),
                                              color: BordroDetailConstant
                                                  .mainColor,
                                            ),
                                            title: Text(
                                              controller.documentResponse
                                                  .data![index].dOCUMENTPERIOD
                                                  .toString(),
                                              style: BordroDetailConstant()
                                                  .salarytext2,
                                            ),
                                            trailing: Container(
                                              decoration: BordroDetailConstant()
                                                  .downloadContainer,
                                              width: 8.w,
                                              height: 4.h,
                                              child: Center(
                                                  child: Icon(
                                                Icons.visibility_outlined,
                                                size: 2.8.h,
                                                color:
                                                    BordroDetailConstant.whiteC,
                                              )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      )
                    : const Center(child: CircularProgressIndicator())),
              )
              // ),
            ],
          ),
        ));
  }
}
