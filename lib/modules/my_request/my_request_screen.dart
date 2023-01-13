import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/my_request/my_request_controller.dart';

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
                      child: Icon(Icons.arrow_back,
                          size: 4.h, color: Colors.white),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //     left: 2.0.h,
                    //   ),
                    //   child: Text(
                    //     "MyRequestScreen",
                    //     style: GoogleFonts.poppins(
                    //         textStyle:
                    //             TextStyle(fontSize: 16.sp, color: Colors.white)),
                    //   ),
                    // ),
                    GestureDetector(
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

                  //color: Color(0xffF6F6F7),

                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                  )),
              height: 90.h,
              child: GetBuilder<MyRequestController>(
                  init: MyRequestController(),
                  builder: (controller) {
                    if (controller.myRequestResponse?.data == null) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller
                          .myRequestResponse!.data!.myRequestList!.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(2.0.h),
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
                                borderRadius: BorderRadius.circular(20)),
                            //width:double.infinity,
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
                                    padding: EdgeInsets.only(left: 1.5.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "02.12.2022 19.45",
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 16.sp,
                                                      color: Colors
                                                          .grey.shade400)),
                                            ),
                                            SizedBox(
                                              width: 40.w,
                                            ),
                                            Icon(
                                              Icons.file_copy_outlined,
                                              size: 4.5.h,
                                              color: const Color(0xff567DF4),
                                            )
                                          ],
                                        ),
                                        Text(
                                          controller.myRequestResponse!.data!
                                              .myRequestList![index].rEQNAME
                                              .toString(),
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
                                          "566",
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
                                          "Sevinç Aksu",
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
                                          "Mümin Sürer",
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
                                          "Devam ediyor",
                                          style: GoogleFonts.poppins(
                                              textStyle:
                                                  TextStyle(fontSize: 18.sp)),
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
