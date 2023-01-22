// ignore_for_file: unnecessary_string_interpolations

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
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff567DF4),
      body: Column(
        children: [
          Container(
            width: 90.w,
            height: 13.h,
            color: Color(0xff567DF4),
            child: Padding(
              padding: EdgeInsets.only(top: 3.h, left: 3.w, right: 3.6.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back,
                        size: 24.sp, color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.defaultDialog(
                        contentPadding: EdgeInsets.all(9.sp),
                        backgroundColor: Colors.grey.shade200,
                        title: "",
                        content: SizedBox(
                          height: 40.h,
                          width: 75.w,
                          child: ListView.builder(
                            itemCount: controller.filters.length,
                            itemBuilder: (context, index) {
                              return Container(
                                alignment: Alignment.centerLeft,
                                width: 10.w,
                                height: 5.h,
                                child: GestureDetector(
                                  onTap: () {
                                    controller.getMyRequest(
                                        controller.filters[index]["id"]);

                                    Get.back();
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(10.sp),
                                    decoration:
                                        BoxDecoration(color: Colors.white70),
                                    child: Text(
                                      controller.filters[index]["description"],
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(1.3.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.25.h),
                            color: Colors.white.withOpacity(0.15)),
                        width: 5.h,
                        height: 5.h,
                        child: Image.asset(
                          "assets/filter.png",
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xffEEF0FC),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(3.125.h),
                    topLeft: Radius.circular(3.125.h),
                  )),
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
                    // physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller
                            .myRequestResponse?.data?.myRequestList?.length ??
                        0,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 1.25.h, horizontal: 5.7.w),
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
                            height: 36.h,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 1.25.h,
                                    spreadRadius: 0.625.h,
                                    offset: Offset(
                                      2.5.h,
                                      2.5.h,
                                    ),
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(2.5.h)),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 4.w, top: 2.h, bottom: 2.h),
                              child: Row(
                                children: [
                                  Container(
                                    width: 1.w,
                                    height: 40.h,
                                    color: Colors.blue,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 2.h, bottom: 1.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      '${controller.myRequestResponse?.data?.myRequestList?[index].rEQDATE?.split(" ").first.substring(0, 10) ?? ""}',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 15.sp,
                                                            color: Colors
                                                                .grey.shade400),
                                                      ),
                                                    ),
                                                    SizedBox(width: 1.6.w),
                                                    Text(
                                                      '${controller.myRequestResponse?.data?.myRequestList?[index].rEQDATE?.split(" ").first.substring(11, 19) ?? ""}',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 15.sp,
                                                            color: Colors
                                                                .grey.shade400),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  controller
                                                          .myRequestResponse
                                                          ?.data
                                                          ?.myRequestList?[
                                                              index]
                                                          .rEQNAME ??
                                                      "",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 33.w,
                                            ),
                                            Container(
                                                height: 6.h,
                                                width: 6.h,
                                                child: Image.asset(
                                                    "assets/request.png"))
                                          ],
                                        ),
                                        SizedBox(height: 1.h),
                                        Text(
                                          "Talep No",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 15.sp,
                                                  color: Colors.grey.shade400)),
                                        ),
                                        Text(
                                          "${controller.myRequestResponse?.data?.myRequestList?[index].iDMASTER ?? ""}",
                                          style: GoogleFonts.poppins(
                                              textStyle:
                                                  TextStyle(fontSize: 16.sp)),
                                        ),
                                        Text(
                                          "Atanan kişi",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 15.sp,
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
                                                  TextStyle(fontSize: 16.sp)),
                                        ),
                                        Text(
                                          "Açıklama",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 15.sp,
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
                                                  TextStyle(fontSize: 16.sp)),
                                        ),
                                        Text(
                                          "Durum",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 15.sp,
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
                                                TextStyle(fontSize: 16.sp),
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
            ),
          )
        ],
      ),
    );
  }
}
