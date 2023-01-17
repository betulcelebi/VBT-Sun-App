import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/approve/approve_controller.dart';
import 'package:vbt_sun_app_project/modules/approve_detail/approve_detail_controller.dart';

class ApproveDetailScreen extends StatefulWidget {
  const ApproveDetailScreen({Key? key, required this.idMaster})
      : super(key: key);
  final int idMaster;
  @override
  State<ApproveDetailScreen> createState() => _ApproveDetailScreenState();
}

class _ApproveDetailScreenState extends State<ApproveDetailScreen> {
  @override
  void dispose() {
    super.dispose();
    Get.delete<ApproveDetailController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff567DF4),
      body: GetBuilder<ApproveDetailController>(
          init: ApproveDetailController(idMaster: widget.idMaster),
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
                    child: SingleChildScrollView(
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
                                  borderRadius: BorderRadius.circular(2.5.h)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 2.h, top: 2.h, bottom: 1.5.h),
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
                                                vertical: 1.h, horizontal: 1.h),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 1.h),
                                                  child: Text(
                                                    controller.approveDetailResponse ==
                                                            null
                                                        ? ""
                                                        : controller
                                                                .approveDetailResponse?[
                                                            "Data"]["REQ_NAME"],
                                                    style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 16.sp),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: const Color(
                                                            0xff567DF4)),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 1.h),
                                                  child: Text(
                                                    "15.01.2023",
                                                    style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 16.sp),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                Text(
                                                  "Talep Eden",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          fontSize: 15.sp),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          Colors.grey.shade400),
                                                ),
                                                Text(
                                                  "Uğur İsmail Uçar",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          fontSize: 16.sp),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                ),
                                                Text(
                                                  "Atanan Kişi",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          fontSize: 15.sp),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          Colors.grey.shade400),
                                                ),
                                                Text(
                                                  "Bülent Yönter",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          fontSize: 16.sp),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                              margin:
                                                  EdgeInsets.only(left: 33.w),
                                              height: 5.5.h,
                                              width: 5.5.h,
                                              padding: EdgeInsets.all(0.25.h),
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
                                        margin: EdgeInsets.only(bottom: 2.h),
                                        alignment: Alignment.center,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 5.h,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                blurStyle: BlurStyle.inner,
                                                color: const Color(0xff567DF4)
                                                    .withOpacity(0.8),
                                                blurRadius: 0.75.h,
                                                spreadRadius: 0.375.h,
                                                offset: Offset(
                                                  0.25.h,
                                                  0.25.h,
                                                ),
                                              )
                                            ],
                                            color: const Color(0xffEEF0FC),
                                            borderRadius:
                                                BorderRadius.circular(2.5.h)),
                                        child: Text(
                                          "İzin Kullanım Bilgisi",
                                          style: GoogleFonts.poppins(
                                            textStyle:
                                                TextStyle(fontSize: 16.sp),
                                            fontWeight: FontWeight.bold,
                                            color: const Color(0xff567DF4),
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
                                    borderRadius: BorderRadius.circular(2.5.h)),
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
                                            vertical: 1.h, horizontal: 1.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 1.h),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Detay",
                                                    style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 16.sp),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: const Color(
                                                            0xff567DF4)),
                                                  ),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          left: 54.w),
                                                      height: 5.5.h,
                                                      width: 5.5.h,
                                                      padding: EdgeInsets.all(
                                                          0.25.h),
                                                      child: Image.asset(
                                                          "assets/info.png")),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(0),
                                              height: 35.h,
                                              width: 38.h,
                                              //color: Colors.amber,
                                              child: MediaQuery.removePadding(
                                                context: context,
                                                removeTop: true,
                                                child: ListView.builder(
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: 18,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          " sddsdsd",
                                                          style: GoogleFonts
                                                              .poppins(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 15.sp,
                                                              color: Colors.grey
                                                                  .shade500,
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Text(
                                                              "saadd",
                                                              style: GoogleFonts.poppins(
                                                                  textStyle: TextStyle(
                                                                      fontSize:
                                                                          15.sp)),
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
                                height: 45.h,
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
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 1.h,
                                                  horizontal: 1.h),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 1.h),
                                                    child: Text(
                                                      "Tarihçe",
                                                      style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                              fontSize: 16.sp),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: const Color(
                                                              0xff567DF4)),
                                                    ),
                                                  ),
                                                  Text(
                                                    "15.01.2023",
                                                    style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 16.sp),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 1.h),
                                                    child: Text(
                                                      "Durum",
                                                      style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                              fontSize: 15.sp),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors
                                                              .grey.shade400),
                                                    ),
                                                  ),
                                                  Text(
                                                    "Talep Başlamıştır",
                                                    style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 16.sp),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "Talep Eden",
                                                    style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 15.sp),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors
                                                            .grey.shade400),
                                                  ),
                                                  Text(
                                                    "Uğur İsmail Uçar",
                                                    style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 16.sp),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "Unvanı",
                                                    style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 15.sp),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors
                                                            .grey.shade400),
                                                  ),
                                                  Text(
                                                    "Mali İşler Personeli",
                                                    style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 16.sp),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                                margin:
                                                    EdgeInsets.only(left: 30.w),
                                                height: 5.5.h,
                                                width: 5.5.h,
                                                padding: EdgeInsets.all(0.25.h),
                                                child: Image.asset(
                                                    "assets/history.png")),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, right: 2.h),
                                        child: TextFormField(
                                          cursorColor: const Color(0xff567DF4),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 0.2.h,
                                                    color: const Color(
                                                        0xff567DF4)), //<-- SEE HERE
                                                borderRadius:
                                                    BorderRadius.circular(2.h),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 0.2.h,
                                                    color: Colors.grey
                                                        .shade300), //<-- SEE HERE
                                                borderRadius:
                                                    BorderRadius.circular(2.h),
                                              ),
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.all(2.5.h),
                                              hintText: "Açıklama Giriniz",
                                              hintStyle: GoogleFonts.poppins(
                                                  color:
                                                      const Color(0xff567DF4),
                                                  fontSize: 15.sp)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 2.h,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 2.h),
                                              alignment: Alignment.center,
                                              width: 18.h,
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
                                                "Reddet",
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        fontSize: 16.sp),
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.red),
                                              ),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 2.h),
                                              alignment: Alignment.center,
                                              width: 18.h,
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
                                                "Onayla",
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 16.sp),
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 46, 192, 51),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ]),
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
          }),
    );
  }
}
