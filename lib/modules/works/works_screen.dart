import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/works/works_controller.dart';

class Works extends GetView<WorksController> {
  const Works({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff567DF4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 12.5.h,
              color: Color(0xff567DF4),
              child: Padding(
                padding: const EdgeInsets.only(top: 12, right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3.0.h),
                      child: Icon(Icons.arrow_back,
                          size: 4.h, color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22.0.h),
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
              decoration: BoxDecoration(
                  color: Color(0xffF6F6F7),

                  //color: Color(0xffF6F6F7),

                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                  )),
              height: 90.h,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
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
                              offset: Offset(
                                20,
                                20,
                              ),
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      //width:double.infinity,
                      height: 32.h,

                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 2.0.h, top: 2.h, bottom: 2.h),
                        child: Row(
                          children: [
                            Container(
                              width: 1.w,
                              height: 28.h,
                              color: Colors.blue,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 1.5.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "İş No",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.grey.shade400)),
                                      ),
                                      SizedBox(
                                        width: 60.w,
                                      ),
                                      Icon(
                                        Icons.work_history_outlined,
                                        size: 4.5.h,
                                        color: Color(0xff567DF4),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "13",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(fontSize: 18.sp)),
                                  ),
                                  Text(
                                    "Talep No",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.grey.shade400)),
                                  ),
                                  Text(
                                    "25",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(fontSize: 18.sp)),
                                  ),
                                  Text(
                                    "Talep Eden",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.grey.shade400)),
                                  ),
                                  Text(
                                    "Talep eden verisi yazmıyor",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(fontSize: 18.sp)),
                                  ),
                                  Text(
                                    "Durumu",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.grey.shade400)),
                                  ),
                                  Text(
                                    "Bekliyor",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(fontSize: 18.sp)),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
