import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WorksDetailScreen extends StatelessWidget {
  const WorksDetailScreen({super.key});

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
            color: const Color(0xff567DF4),
            child: Padding(
              padding: EdgeInsets.only(top: 3.h, left: 1.h, right: 1.8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back, size: 4.h, color: Colors.white),
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
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 1.25.h, horizontal: 2.8.h),
                    child: Container(
                      height: 23.h,
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
                        padding:
                            EdgeInsets.only(left: 2.h, top: 2.5.h, bottom: 2.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 1.w,
                              height: 20.h,
                              color: Colors.blue,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h, top: 1.h),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tarih",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 15.sp,
                                            color: Colors.grey.shade400)),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        " ",
                                        style: GoogleFonts.poppins(
                                            textStyle:
                                                TextStyle(fontSize: 16.sp)),
                                      ),
                                      SizedBox(width: 0.8.h),
                                      Text(
                                        " ",
                                        style: GoogleFonts.poppins(
                                            textStyle:
                                                TextStyle(fontSize: 16.sp)),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Talep Eden",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 15.sp,
                                            color: Colors.grey.shade400)),
                                  ),
                                  Text(
                                    " ",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(fontSize: 16.sp)),
                                  ),
                                  Text(
                                    "Durum",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 15.sp,
                                            color: Colors.grey.shade400)),
                                  ),
                                  Text(
                                    " ",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(fontSize: 16.sp)),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 20.h, top: 0),
                                height: 5.5.h,
                                width: 5.5.h,
                                padding: EdgeInsets.all(0.25.h),
                                child: Image.asset("assets/work.png")),
                          ],
                        ),
                      ),
                    ),
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
