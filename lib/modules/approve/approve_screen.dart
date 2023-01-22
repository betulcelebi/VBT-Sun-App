import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/approve_detail/approve_detail_controller.dart';
import 'package:vbt_sun_app_project/modules/approve_detail/approve_detail_screen.dart';
import 'package:vbt_sun_app_project/routes/app_pages.dart';

import 'approve_controller.dart';

class Approve extends GetView<ApproveController> {
  const Approve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff567DF4),
      body: Column(
        children: [
          Container(
            width: 43.75.h,
            height: 13.h,
            color: Color(0xff567DF4),
            child: Padding(
              padding: EdgeInsets.only(top: 3.h, left: 1.h, right: 1.8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child:
                        Icon(Icons.arrow_back, size: 4.h, color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.defaultDialog(
                        contentPadding: EdgeInsets.all(2.5.h),
                        backgroundColor: Colors.grey.shade200,
                        title: "",
                        content: SizedBox(
                          height: 25.h,
                          width: 40.h,
                          child: ListView.builder(
                            itemCount: controller.approvefilters.length,
                            itemBuilder: (context, index) {
                              return Container(
                                alignment: Alignment.centerLeft,
                                width: 10.w,
                                height: 5.h,
                                child: GestureDetector(
                                  onTap: () {
                                    controller.getApprove(
                                        controller.approvefilters[index]["id"]);

                                    Get.back();
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(10.sp),
                                    decoration:
                                        BoxDecoration(color: Colors.white70),
                                    child: Text(
                                      controller.approvefilters[index]
                                          ["description"],
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
              child: GetBuilder<ApproveController>(
                init: ApproveController(),
                builder: (controller) {
                  if (controller.approveResponse?.data == null) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                    shrinkWrap: true,
                    // physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.approveResponse?.data
                            ?.pendingRequestList?.length ??
                        0,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 1.25.h, horizontal: 2.8.h),
                        child: GestureDetector(
                          onTap: () {
                            Get.put(
                              ApproveDetailController(
                                  idMaster: controller.approveResponse!.data!
                                      .pendingRequestList![index].iDMASTER!),
                            );
                            Get.to(
                              () => ApproveDetailScreen(
                                idMaster: controller.approveResponse!.data!
                                    .pendingRequestList![index].iDMASTER!,
                              ),
                            );
                          },
                          child: Container(
                            height: 35.h,
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
                              padding: EdgeInsets.only(top: 2.h, bottom: 1.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.w),
                                        child: Container(
                                          width: 1.w,
                                          height: 40.h,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 3.w),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                          '${controller.approveResponse?.data?.pendingRequestList?[index].rEQDATE?.split(" ").first.substring(0, 10) ?? ""}',
                                                          style: GoogleFonts
                                                              .poppins(
                                                            textStyle: TextStyle(
                                                                fontSize: 15.sp,
                                                                color: Colors
                                                                    .grey
                                                                    .shade400),
                                                          ),
                                                        ),
                                                        SizedBox(width: 0.8.h),
                                                        Text(
                                                          '${controller.approveResponse?.data?.pendingRequestList?[index].rEQDATE?.split(" ").first.substring(11, 19) ?? ""}',
                                                          style: GoogleFonts
                                                              .poppins(
                                                            textStyle: TextStyle(
                                                                fontSize: 15.sp,
                                                                color: Colors
                                                                    .grey
                                                                    .shade400),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Text(
                                                      controller
                                                              .approveResponse
                                                              ?.data
                                                              ?.pendingRequestList?[
                                                                  index]
                                                              .rEQNAME ??
                                                          "",
                                                      style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                              fontSize: 16.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600)),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 0.8.h),
                                            Text(
                                              "Talep No",
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 15.sp,
                                                      color: Colors
                                                          .grey.shade400)),
                                            ),
                                            Text(
                                              "${controller.approveResponse?.data?.pendingRequestList?[index].iDMASTER ?? ""}",
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 16.sp)),
                                            ),
                                            Text(
                                              "Talep Eden",
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 15.sp,
                                                      color: Colors
                                                          .grey.shade400)),
                                            ),
                                            Text(
                                              controller
                                                      .approveResponse
                                                      ?.data
                                                      ?.pendingRequestList?[
                                                          index]
                                                      .rEQEMPLOYEE ??
                                                  "",
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 16.sp)),
                                            ),
                                            Text(
                                              "Atanan Kişi",
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 15.sp,
                                                      color: Colors
                                                          .grey.shade400)),
                                            ),
                                            Text(
                                              controller
                                                      .approveResponse
                                                      ?.data
                                                      ?.pendingRequestList?[
                                                          index]
                                                      .aSSIGNEMPLOYEE ??
                                                  " ",
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 16.sp)),
                                            ),
                                            Text(
                                              "Açıklama",
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 15.sp,
                                                      color: Colors
                                                          .grey.shade400)),
                                            ),
                                            Text(
                                              controller
                                                      .approveResponse
                                                      ?.data
                                                      ?.pendingRequestList?[
                                                          index]
                                                      .rEQUESTDETAIL ??
                                                  "",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
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
                                  Padding(
                                    padding: EdgeInsets.only(right: 4.w),
                                    child: Container(
                                        height: 5.h,
                                        width: 5.h,
                                        child: Image.asset("assets/stamp.png")),
                                  )
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
