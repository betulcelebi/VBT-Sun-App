import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/works/works_controller.dart';

class Works extends GetView<WorksController> {
  const Works({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff567DF4),
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
                    Container(
                        padding: EdgeInsets.all(1.3.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.25.h),
                            color: Colors.white.withOpacity(0.15)),
                        width: 5.h,
                        height: 5.h,
                        child: Image.asset(
                          "assets/filter.png",
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffEEF0FC),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(3.125.h),
                    topLeft: Radius.circular(3.125.h),
                  )),
              child: GetBuilder<WorksController>(
                  init: WorksController(),
                  builder: (controller) {
                    if (controller.myWorksResponse!.data == null) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller
                          .myWorksResponse!.data!.pendingJobsList!.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 1.25.h, horizontal: 2.8.h),
                          child: Container(
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
                            //width:double.infinity,
                            height: 26.h,

                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 2.h, top: 2.h, bottom: 2.h),
                              child: Row(
                                children: [
                                  Container(
                                    width: 1.w,
                                    height: 24.h,
                                    color: Colors.blue,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 1.5.h, bottom: 2.h),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "İş No",
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 14.sp,
                                                      color: Colors
                                                          .grey.shade400)),
                                            ),
                                            SizedBox(
                                              width: 28.5.h,
                                            ),
                                            Container(
                                                height: 5.5.h,
                                                width: 5.5.h,
                                                padding: EdgeInsets.all(0.25.h),
                                                child: Image.asset(
                                                    "assets/work.png"))
                                          ],
                                        ),
                                        Text(
                                          controller.myWorksResponse!.data!
                                              .pendingJobsList![index].iDWORK
                                              .toString(),
                                          style: GoogleFonts.poppins(
                                              textStyle:
                                                  TextStyle(fontSize: 16.sp)),
                                        ),
                                        // Text(
                                        //   "Talep No",
                                        //   style: GoogleFonts.poppins(
                                        //       textStyle: TextStyle(
                                        //           fontSize: 16.sp,
                                        //           color: Colors.grey.shade400)),
                                        // ),
                                        // Text(
                                        //   "25",
                                        //   style: GoogleFonts.poppins(
                                        //       textStyle:
                                        //           TextStyle(fontSize: 18.sp)),
                                        // ),
                                        Text(
                                          "Talep Eden",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Colors.grey.shade400)),
                                        ),
                                        Text(
                                          // ignore: unnecessary_string_interpolations
                                          '${controller.myWorksResponse?.data?.pendingJobsList?[index].aSSIGNEMPLOYEE ?? " "}',
                                          style: GoogleFonts.poppins(
                                              textStyle:
                                                  TextStyle(fontSize: 16.sp)),
                                        ),
                                        Text(
                                          "Durumu",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Colors.grey.shade400)),
                                        ),
                                        Text(
                                          controller
                                              .myWorksResponse!
                                              .data!
                                              .pendingJobsList![index]
                                              .wORKSTATUSNAME
                                              .toString(),
                                          style: GoogleFonts.poppins(
                                              textStyle:
                                                  TextStyle(fontSize: 16.sp)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}