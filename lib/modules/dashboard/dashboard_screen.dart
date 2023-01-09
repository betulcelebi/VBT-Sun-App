// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/dashboard/dashboard_controller.dart';
import 'package:vbt_sun_app_project/utils/constant.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: prefer_const_constructors
        backgroundColor: DashboardConstant.mainColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 1.5.h,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 1.875.h, vertical: 1.875.h),
              child: Container(
                //alignment: Alignment.center,
                width: 43.75.h,
                height: 12.5.h,
                color: const Color(0xff567DF4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 3.75.h,
                          backgroundImage: const AssetImage("assets/user.jpg"),
                        ),
                        SizedBox(
                          width: 1.5.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Merhaba, Betul",
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 2.h),
                            ),
                            Text(
                              "Günaydın",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 2.25.h,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 5.h,
                      height: 5.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.25.h),
                          color: Colors.white.withOpacity(0.15)),
                      child: const Icon(Icons.menu, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 1.25.h,
            ),
            Expanded(
              child: Container(
                decoration: DashboardConstant().decExpand,
                child: Padding(
                  padding:
                      EdgeInsets.only(right: 2.5.h, left: 2.5.h, top: 1.25.h),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 34.h,
                          //color: Colors.red,
                          child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 0.18.h,
                                      crossAxisSpacing: 2.5.h,
                                      mainAxisSpacing: 2.5.h),
                              itemCount: 4,
                              itemBuilder: (BuildContext ctx, index) {
                                return Container(
                                    decoration: DashboardConstant().decType,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 1.5.h, top: 2.5.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 5.h,
                                              height: 5.h,
                                              decoration:
                                                  DashboardConstant().miniDec,
                                              child: Image.asset(
                                                DashboardConstant()
                                                    .gimagePath[index],
                                              )),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          Text(
                                            DashboardConstant()
                                                .gridTitle[index],
                                            style: DashboardConstant().gridText,
                                          )
                                        ],
                                      ),
                                    ));
                              }),
                        ),
                        ListView.builder(
                          itemCount: 2,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Container(
                              alignment: Alignment.center,
                              width: 43.75.h,
                              height: 10.h,
                              margin: EdgeInsets.only(bottom: 1.875.h),
                              decoration: DashboardConstant().decType,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: 1.5.h, right: 1.5.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 5.h,
                                          height: 5.h,
                                          decoration:
                                              DashboardConstant().miniDec,
                                          child: Image.asset(DashboardConstant()
                                              .limagePath[index]),
                                        ),
                                        SizedBox(
                                          width: 0.8.h,
                                        ),
                                        Text(
                                          DashboardConstant().listTitle[index],
                                          style: DashboardConstant().gridText,
                                        )
                                      ],
                                    ),
                                    Icon(
                                      Icons.chevron_right,
                                      size: 3.75.h,
                                      color: DashboardConstant.mainColor,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
