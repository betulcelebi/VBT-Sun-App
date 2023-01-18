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
                                size: 4.h, color: Colors.white)),
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
                    child: GetBuilder(
                        init: MyRequestDetailController(
                            idMaster: widget.idMaster),
                        builder: (controller) {
                          if (controller.myRequestDetailResponse == null) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 3.h, horizontal: 2.8.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 31.h,
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
                                        borderRadius:
                                            BorderRadius.circular(2.5.h)),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 2.h,
                                                top: 2.h,
                                                bottom: 1.5.h),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 1.w,
                                                  height: 19.h,
                                                  color: Colors.blue,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 1.h,
                                                      horizontal: 1.h),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 1.h),
                                                        child: Text(
                                                          controller.myRequestDetailResponse ==
                                                                  null
                                                              ? ""
                                                              : controller.myRequestDetailResponse?[
                                                                          "Data"]
                                                                      [
                                                                      "REQ_NAME"] ??
                                                                  "",
                                                          style: GoogleFonts.poppins(
                                                              textStyle:
                                                                  TextStyle(
                                                                      fontSize: 16
                                                                          .sp),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: const Color(
                                                                  0xff567DF4)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 1.h),
                                                        child: Text(
                                                          controller.myRequestDetailResponse ==
                                                                  null
                                                              ? ""
                                                              : DateFormat(
                                                                      "dd.MM.yyyy  HH:mm")
                                                                  .format(DateTime.parse(controller
                                                                              .myRequestDetailResponse?["Data"]
                                                                          [
                                                                          "REQ_DATE"] ??
                                                                      DateTime.now()
                                                                          .toString())),
                                                          style: GoogleFonts.poppins(
                                                              textStyle:
                                                                  TextStyle(
                                                                      fontSize: 16
                                                                          .sp),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      Text(
                                                        "Talep Eden",
                                                        style: GoogleFonts.poppins(
                                                            textStyle:
                                                                TextStyle(
                                                                    fontSize:
                                                                        15.sp),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Colors
                                                                .grey.shade400),
                                                      ),
                                                      Text(
                                                        controller.myRequestDetailResponse ==
                                                                null
                                                            ? ""
                                                            : controller.myRequestDetailResponse?[
                                                                        'Data'][
                                                                    'REQ_EMPLOYEE'] ??
                                                                "",
                                                        style: GoogleFonts.poppins(
                                                            textStyle:
                                                                TextStyle(
                                                                    fontSize:
                                                                        16.sp),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      Text(
                                                        "Atanan Kişi",
                                                        style: GoogleFonts.poppins(
                                                            textStyle:
                                                                TextStyle(
                                                                    fontSize:
                                                                        15.sp),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Colors
                                                                .grey.shade400),
                                                      ),
                                                      Text(
                                                        controller.myRequestDetailResponse ==
                                                                null
                                                            ? ""
                                                            : controller.myRequestDetailResponse?[
                                                                        'Data'][
                                                                    'ASSIGN_EMPLOYEE'] ??
                                                                "",
                                                        style: GoogleFonts.poppins(
                                                            textStyle:
                                                                TextStyle(
                                                                    fontSize:
                                                                        16.sp),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        left: 7.h),
                                                    height: 5.5.h,
                                                    width: 5.5.h,
                                                    padding:
                                                        EdgeInsets.all(0.25.h),
                                                    child: Image.asset(
                                                        "assets/stamp.png")),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 4.h,
                                            ),
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 2.h),
                                              alignment: Alignment.center,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 5.h,
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurStyle:
                                                          BlurStyle.inner,
                                                      color: const Color(
                                                              0xff567DF4)
                                                          .withOpacity(0.8),
                                                      blurRadius: 0.75.h,
                                                      spreadRadius: 0.375.h,
                                                      offset: Offset(
                                                        0.25.h,
                                                        0.25.h,
                                                      ),
                                                    )
                                                  ],
                                                  color:
                                                      const Color(0xffEEF0FC),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.5.h)),
                                              child: Text(
                                                "İzin Kullanım Bilgisi",
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 16.sp),
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      const Color(0xff567DF4),
                                                ),
                                              ),
                                            ),
                                          )
                                        ]),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 2.h),
                                    child: Container(
                                      width: double.infinity,
                                      height: 47.h,
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
                                          borderRadius:
                                              BorderRadius.circular(2.5.h)),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 2.h, left: 2.h, bottom: 1.h),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 1.w,
                                              height: 45.h,
                                              color: Colors.blue,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 1.h,
                                                  horizontal: 1.h),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 1.h),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "Detay",
                                                          style: GoogleFonts.poppins(
                                                              textStyle:
                                                                  TextStyle(
                                                                      fontSize: 16
                                                                          .sp),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: const Color(
                                                                  0xff567DF4)),
                                                        ),
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 27.h),
                                                            height: 5.5.h,
                                                            width: 5.5.h,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    0.4.h),
                                                            child: Image.asset(
                                                                "assets/info.png")),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(0),
                                                    height: 35.h,
                                                    width: 38.h,
                                                    child: MediaQuery
                                                        .removePadding(
                                                      context: context,
                                                      removeTop: true,
                                                      child: ListView.builder(
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount: controller
                                                                .myRequestDetailResponse?[
                                                                    'Data'][
                                                                    "REQUEST_DETAIL_KEY_VALUE"]
                                                                .length ??
                                                            0,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                controller.myRequestDetailResponse ==
                                                                        null
                                                                    ? ''
                                                                    : controller.myRequestDetailResponse?['Data']['REQUEST_DETAIL_KEY_VALUE'][index]
                                                                            [
                                                                            'Name'] ??
                                                                        "",
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        15.sp,
                                                                    color: Colors
                                                                        .grey
                                                                        .shade500,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  child: Text(
                                                                    controller.myRequestDetailResponse ==
                                                                            null
                                                                        ? ''
                                                                        : controller.myRequestDetailResponse?['Data']['REQUEST_DETAIL_KEY_VALUE'][index]['Value'] ??
                                                                            "",
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      textStyle:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15.sp,
                                                                      ),
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          );
                                                        },
                                                      ),
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
                                  Padding(
                                    padding: EdgeInsets.only(top: 2.h),
                                    child: Container(
                                      width: double.infinity,
                                      height: 30.h,
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
                                          borderRadius:
                                              BorderRadius.circular(2.5.h)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 2.h, top: 2.h),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 1.w,
                                                    height: 25.h,
                                                    color: Colors.blue,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 1.h,
                                                            horizontal: 1.h),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 1.h),
                                                          child: Text(
                                                            "Tarihçe",
                                                            style: GoogleFonts.poppins(
                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        16.sp),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: const Color(
                                                                    0xff567DF4)),
                                                          ),
                                                        ),
                                                        Text(
                                                          controller.myRequestDetailResponse ==
                                                                  null
                                                              ? ""
                                                              : DateFormat(
                                                                      "dd.MM.yyyy  HH:mm")
                                                                  .format(
                                                                  DateTime
                                                                      .parse(
                                                                    controller.myRequestDetailResponse?["Data"]["HISTORY"][0]
                                                                            [
                                                                            "CONFIRM_DATE"] ??
                                                                        DateTime.now()
                                                                            .toString(),
                                                                  ),
                                                                ),
                                                          style: GoogleFonts.poppins(
                                                              textStyle:
                                                                  TextStyle(
                                                                      fontSize: 16
                                                                          .sp),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 1.h),
                                                          child: Text(
                                                            "Durum",
                                                            style: GoogleFonts.poppins(
                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        15.sp),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Colors
                                                                    .grey
                                                                    .shade400),
                                                          ),
                                                        ),
                                                        Text(
                                                          controller.myRequestDetailResponse ==
                                                                  null
                                                              ? ""
                                                              : controller.myRequestDetailResponse?[
                                                                          "Data"]
                                                                      [
                                                                      "HISTORY"][0]
                                                                  [
                                                                  "CONFIRM_DESCRIPTION"],
                                                          style: GoogleFonts.poppins(
                                                              textStyle:
                                                                  TextStyle(
                                                                      fontSize: 16
                                                                          .sp),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                        Text(
                                                          "Talep Eden",
                                                          style: GoogleFonts.poppins(
                                                              textStyle:
                                                                  TextStyle(
                                                                      fontSize: 15
                                                                          .sp),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Colors.grey
                                                                  .shade400),
                                                        ),
                                                        Text(
                                                          controller.myRequestDetailResponse ==
                                                                  null
                                                              ? ""
                                                              : controller.myRequestDetailResponse?[
                                                                          "Data"]
                                                                      [
                                                                      "HISTORY"][0]
                                                                  [
                                                                  "EMPLOYEE_NAME_SURNAME"],
                                                          style: GoogleFonts.poppins(
                                                              textStyle:
                                                                  TextStyle(
                                                                      fontSize: 16
                                                                          .sp),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                        Text(
                                                          "Unvanı",
                                                          style: GoogleFonts.poppins(
                                                              textStyle:
                                                                  TextStyle(
                                                                      fontSize: 15
                                                                          .sp),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Colors.grey
                                                                  .shade400),
                                                        ),
                                                        Text(
                                                          controller.myRequestDetailResponse ==
                                                                  null
                                                              ? ""
                                                              : controller.myRequestDetailResponse?[
                                                                          "Data"]
                                                                      [
                                                                      "HISTORY"][0]
                                                                  [
                                                                  "POSITION_NAME"],
                                                          style: GoogleFonts.poppins(
                                                              textStyle:
                                                                  TextStyle(
                                                                      fontSize: 16
                                                                          .sp),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  // Container(
                                                  //     margin: EdgeInsets.only(
                                                  //         right: 7.h),
                                                  //     height: 5.h,
                                                  //     width: 5.h,
                                                  //     padding:
                                                  //         EdgeInsets.all(0.8.h),
                                                  //     child: Image.asset(
                                                  //         "assets/history.png")),
                                                ],
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                )
              ],
            );
          }),
    );
  }
}
