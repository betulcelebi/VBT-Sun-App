import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/vacation/vacation_controller.dart';

class Vacation extends GetView<VacationController> {
  //const
  Vacation({super.key});
// List<String>firsttile=[
//   "İdari izin",
//   "İdari izin2"
// ];
// List<String>date=[
//   "09.02.2022",
//   "01.02.2022"
// ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff567DF4),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 15.0.h),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xffF6F6F7),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0),
              ),
            ),
            width: double.infinity,
            height: 90.h,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.0.h),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 0.45.w,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    width: 90.w,
                    height: 5.h,
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Color(0xff48D380),
                                borderRadius: BorderRadius.circular(15)),
                            width: 7.w,
                            height: 3.5.h,
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 2.0.h),
                          child: Text(
                            "İzin hak ediş tarihi : ",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff48D380),
                            )),
                          ),
                        ),
                        Text(
                          controller
                              .dashboardController
                              .homeInfoResponse!
                              .data!
                              .vacationInfo!
                              .employeeEarnedRightsList![0]
                              .nEXTLEAVEALLOWANCEDATE
                              .toString(),
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff567DF4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.1.h),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        right: BorderSide(
                          width: 0.45.w,
                          color: Colors.grey.shade300,
                        ),
                        left: BorderSide(
                          width: 0.45.w,
                          color: Colors.grey.shade300,
                        ),
                        bottom: BorderSide(
                          width: 0.45.w,
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ),
                    width: 90.w,
                    height: 10.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 2.0.h, top: 1.h),
                          child: Row(
                            children: [
                              Text(
                                " İzin hak ediş gün sayısı      : ",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                controller
                                    .dashboardController
                                    .homeInfoResponse!
                                    .data!
                                    .vacationInfo!
                                    .employeeEarnedRightsList![0]
                                    .aNNUALLEAVEBALANCE
                                    .toString(),
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 15.sp,
                                    color: Color(0xff567DF4),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.0.h, top: 1.h),
                          child: Row(
                            children: [
                              Text(
                                " İzin bakiyesi                          : ",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                controller
                                    .dashboardController
                                    .homeInfoResponse!
                                    .data!
                                    .vacationInfo!
                                    .employeeEarnedRightsList![0]
                                    .nEXTLEAVEALLOWANCEDAYS
                                    .toString(),
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 15.sp,
                                    color: Color(0xff567DF4),
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
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 0.45.w,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  width: 90.w,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "İdari izin",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "29.09.2022",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Kullandım",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xff48D380),
                                ),
                                width: 18.w,
                                height: 5.h,
                                child: Center(
                                  child: Text(
                                    "2.0 Gün",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
