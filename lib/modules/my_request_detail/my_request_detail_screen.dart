import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/models/my_request_detail_model.dart';

import 'my_request_detail_controller.dart';

class MyRequestDetail extends StatefulWidget {
  const MyRequestDetail({Key? key, required this.idMaster}) : super(key: key);
  final int idMaster;
  @override
  State<MyRequestDetail> createState() => _MyRequestDetailState();
}

class _MyRequestDetailState extends State<MyRequestDetail> {
  @override
  void dispose() {
    super.dispose();
    Get.delete<MyRequestDetailController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff567DF4),
      body: GetBuilder<MyRequestDetailController>(
          init: MyRequestDetailController(idMaster: widget.idMaster),
          builder: (controller) {
            if (controller.myRequestDetailResponse == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(
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
                              size: 4.h, color: Colors.white),
                        ),
                        // Container(
                        //     padding: EdgeInsets.all(1.3.h),
                        //     decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(1.25.h),
                        //         color: Colors.white.withOpacity(0.15)),
                        //     width: 5.h,
                        //     height: 5.h,
                        //     child: Image.asset(
                        //       "assets/filter.png",
                        //       color: Colors.white,
                        //     )),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xffEEF0FC),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(3.125.h),
                          topLeft: Radius.circular(3.125.h),
                        )),
                    child: Padding(
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.myRequestDetailResponse == null
                                    ? ""
                                    : controller
                                            .myRequestDetailResponse?["Data"]
                                        ["REQ_NAME"],
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Text(
                                controller.myRequestDetailResponse == null
                                    ? ""
                                    : DateFormat("dd.MM.yyyy HH:mm").format(
                                        DateTime.parse(
                                          controller.myRequestDetailResponse?[
                                                  "Data"]["REQ_DATE"] ??
                                              DateTime.now().toString(),
                                        ),
                                      ),
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: Colors.grey.shade400),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    //mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Talep Eden : ",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 14.sp,
                                                color: Colors.grey.shade400)),
                                      ),
                                      Text(
                                        controller.myRequestDetailResponse ==
                                                null
                                            ? ""
                                            : controller
                                                    .myRequestDetailResponse?[
                                                "Data"]["REQ_EMPLOYEE"],
                                        style: GoogleFonts.poppins(
                                            textStyle:
                                                TextStyle(fontSize: 14.sp)),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Atanan Kişi : ",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.grey.shade400)),
                                  ),
                                  Text(
                                    controller.myRequestDetailResponse == null
                                        ? ""
                                        : controller.myRequestDetailResponse?[
                                            "Data"]["ASSIGN_EMPLOYEE"],
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(fontSize: 14.sp)),
                                  )
                                ],
                              ),
                              Divider(
                                color: const Color(0xff567DF4).withOpacity(0.8),
                                height: 1.5.h,
                                thickness: 0.2.h,
                                indent: 0,
                                endIndent: 0,
                              ),
                              MediaQuery.removePadding(
                                context: context,
                                removeTop: true,
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: controller
                                          .myRequestDetailResponse?["Data"]
                                              ["REQUEST_DETAIL_KEY_VALUE"]
                                          .length ??
                                      0,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          controller.myRequestDetailResponse?[
                                                      "Data"]
                                                  ["REQUEST_DETAIL_KEY_VALUE"]
                                              [index]["Name"],
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              fontSize: 15.sp,
                                              color: Colors.grey.shade400,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              controller.myRequestDetailResponse?[
                                                          "Data"][
                                                      "REQUEST_DETAIL_KEY_VALUE"]
                                                  [index]["Value"],
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 15.sp)),
                                            ),
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),
                              Divider(
                                color: const Color(0xff567DF4).withOpacity(0.8),
                                height: 2.h,
                                thickness: 0.25.h,
                                indent: 0,
                                endIndent: 0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        controller.myRequestDetailResponse ==
                                                null
                                            ? ""
                                            : DateFormat("dd.MM.yyyy HH:mm")
                                                .format(
                                                DateTime.parse(
                                                  controller.myRequestDetailResponse?[
                                                              "Data"]["HISTORY"]
                                                          [0]["CONFIRM_DATE"] ??
                                                      DateTime.now().toString(),
                                                ),
                                              ),
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.grey.shade400)),
                                      ),
                                      Text(
                                        controller.myRequestDetailResponse ==
                                                null
                                            ? ""
                                            : controller
                                                        .myRequestDetailResponse?[
                                                    "Data"]["HISTORY"][0]
                                                ["DESCRIPTION"],
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.grey.shade400)),
                                      ),
                                      Icon(
                                        Icons.date_range,
                                        color: const Color(0xff567DF4),
                                        size: 4.h,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        controller.myRequestDetailResponse ==
                                                null
                                            ? ""
                                            : controller
                                                        .myRequestDetailResponse?[
                                                    "Data"]["HISTORY"][0]
                                                ["EMPLOYEE_NAME_SURNAME"],
                                        style: GoogleFonts.poppins(
                                            textStyle:
                                                TextStyle(fontSize: 16.sp)),
                                      ),
                                      Text(
                                        controller.myRequestDetailResponse ==
                                                null
                                            ? ""
                                            : controller
                                                        .myRequestDetailResponse?[
                                                    "Data"]["HISTORY"][0]
                                                ["CONFIRM_DESCRIPTION"],
                                        style: GoogleFonts.poppins(
                                            textStyle:
                                                TextStyle(fontSize: 16.sp)),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    controller.myRequestDetailResponse == null
                                        ? ""
                                        : controller.myRequestDetailResponse?[
                                                "Data"]["HISTORY"][0]
                                            ["POSITION_NAME"],
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(fontSize: 16.sp)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
