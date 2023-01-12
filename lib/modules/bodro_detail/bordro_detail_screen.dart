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
              Padding(
                padding: EdgeInsets.only(top: 6.h, left: 4.h),
                child: SizedBox(
                    width: double.infinity,
                    height: 5.h,
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: BordroDetailConstant.whiteC,
                            )),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text("Bordro",
                            style:
                                //   TextStyle(color: Colors.white, fontSize: 16.sp),
                                BordroDetailConstant().appBarText)
                      ],
                    )),
              ),
              SizedBox(
                height: 2.h,
              ),

              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BordroDetailConstant().generalContainer,
                // BoxDecoration(
                //     color: Color(0xffF6F6F7),
                //     borderRadius: BorderRadius.only(
                //       topRight: Radius.circular(40.0),
                //       topLeft: Radius.circular(40.0),
                //     )),
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
                                child: Container(
                                  decoration:
                                      BordroDetailConstant().insideCotainer,
                                  // BoxDecoration(
                                  //     color: Colors.white,
                                  //     //color: Colors.red,

                                  //     borderRadius: BorderRadius.circular(15),
                                  //     border: Border.all(
                                  //         color: Colors.grey.shade300,
                                  //         width: 0.5.w)),
                                  width: 85.w,
                                  height: 12.h,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 2.h, top: 1.7.h),
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
                                              const EdgeInsets.only(right: 25),
                                          minLeadingWidth: 2,
                                          enabled: true,
                                          leading: Container(
                                            width: 1.w,
                                            height: 3.h,
                                            // color: Color(0xff567DF4),
                                            color:
                                                BordroDetailConstant.mainColor,
                                          ),
                                          title: Text(
                                            controller.documentResponse
                                                .data![index].dOCUMENTPERIOD
                                                .toString(),
                                            style: BordroDetailConstant()
                                                .salarytext2,
                                          ),
                                          trailing: GestureDetector(
                                            onTap: () {
                                              controller.bordro
                                                  .getPayrollViewDocument(
                                                      controller
                                                          .documentResponse
                                                          .data![index]
                                                          .dOCUMENTYEAR,
                                                      controller
                                                          .documentResponse
                                                          .data![index]
                                                          .dOCUMENTMONTH,
                                                      controller
                                                          .documentResponse
                                                          .data![index]
                                                          .uID);
                                              Get.toNamed(Routes.BODRO);
                                            },
                                            child: Container(
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
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      )
                    : const Center(
                        child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.blue,
                      ))),
              )
              // ),
            ],
          ),
        ));
  }
}
