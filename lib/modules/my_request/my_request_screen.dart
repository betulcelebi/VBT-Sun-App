import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/my_request/my_request_controller.dart';
import 'package:vbt_sun_app_project/modules/my_request_detail/my_request_detail_binding.dart';
import 'package:vbt_sun_app_project/modules/my_request_detail/my_request_detail_controller.dart';
import 'package:vbt_sun_app_project/modules/my_request_detail/my_request_detail_screen.dart';
import 'package:vbt_sun_app_project/routes/app_pages.dart';

class MyRequestScreen extends GetView<MyRequestController> {
  const MyRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff567DF4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 12.5.h,
              color: Color(0xff567DF4),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3.0.h),
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(Icons.arrow_back,
                            size: 4.h, color: Colors.white),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.defaultDialog(
                          backgroundColor: Colors.grey.shade200,
                          title: "",
                          content: Container(
                            height: 350,
                            width: 320,
                            color: Colors.red,
                            child: ListView.builder(
                              itemCount: controller.filters.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 7.5.h,
                                  height: 3.125.h,
                                  child: GestureDetector(
                                    onTap: () {
                                      controller.getMyRequest(
                                          controller.filters[index]["id"]);

                                      Get.back();
                                    },
                                    child: Text(
                                      controller.filters[index]["description"],
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white12,
                          ),
                          width: 10.w,
                          height: 5.h,
                          child: Icon(Icons.filter_alt,
                              size: 4.h, color: Colors.white)),
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffF6F6F7),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: GetBuilder<MyRequestController>(
                init: MyRequestController(),
                builder: (controller) {
                  if (controller.myRequestResponse?.data == null) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller
                            .myRequestResponse?.data?.myRequestList?.length ??
                        0,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(right: 5, top: 10, left: 5),
                        child: GestureDetector(
                          onTap: () {
                            Get.put(
                              MyRequestDetailController(
                                  idMaster: controller.myRequestResponse!.data!
                                      .myRequestList![index].iDMASTER!),
                            );
                            Get.to(
                              () => MyRequestDetail(
                                idMaster: controller.myRequestResponse!.data!
                                    .myRequestList![index].iDMASTER!,
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 10.0,
                                  spreadRadius: 5,
                                  offset: const Offset(
                                    20,
                                    20,
                                  ),
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 40.h,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 2.0.h, top: 2.h, bottom: 2.h),
                              child: Row(
                                children: [
                                  Container(
                                    width: 1.w,
                                    height: 40.h,
                                    color: Colors.blue,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 85.w,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                controller
                                                        .myRequestResponse
                                                        ?.data
                                                        ?.myRequestList?[index]
                                                        .rEQDATE ??
                                                    "",
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 16.sp,
                                                      color:
                                                          Colors.grey.shade400),
                                                ),
                                              ),
                                              Icon(
                                                Icons.file_copy_outlined,
                                                size: 4.3.h,
                                                color: const Color(0xff567DF4),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text(
                                          controller
                                                  .myRequestResponse
                                                  ?.data
                                                  ?.myRequestList?[index]
                                                  .rEQNAME ??
                                              "",
                                          style: GoogleFonts.poppins(
                                              textStyle:
                                                  TextStyle(fontSize: 18.sp)),
                                        ),
                                        Text(
                                          "Talep No",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.grey.shade400)),
                                        ),
                                        Text(
                                          "${controller.myRequestResponse?.data?.myRequestList?[index].iDMASTER ?? ""}",
                                          style: GoogleFonts.poppins(
                                              textStyle:
                                                  TextStyle(fontSize: 18.sp)),
                                        ),
                                        Text(
                                          "Atanan kişi",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.grey.shade400)),
                                        ),
                                        Text(
                                          controller
                                                  .myRequestResponse
                                                  ?.data
                                                  ?.myRequestList?[index]
                                                  .aSSIGNEMPLOYEE ??
                                              "",
                                          style: GoogleFonts.poppins(
                                              textStyle:
                                                  TextStyle(fontSize: 18.sp)),
                                        ),
                                        Text(
                                          "Açıklama",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.grey.shade400)),
                                        ),
                                        Text(
                                          controller
                                                  .myRequestResponse
                                                  ?.data
                                                  ?.myRequestList?[index]
                                                  .rEQEMPLOYEE ??
                                              " ",
                                          style: GoogleFonts.poppins(
                                              textStyle:
                                                  TextStyle(fontSize: 18.sp)),
                                        ),
                                        Text(
                                          "Durum",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.grey.shade400)),
                                        ),
                                        Text(
                                          controller
                                                  .myRequestResponse
                                                  ?.data
                                                  ?.myRequestList?[index]
                                                  .sTATUNAME ??
                                              "",
                                          style: GoogleFonts.poppins(
                                            textStyle:
                                                TextStyle(fontSize: 18.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
