// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/dashboard/dashboard_controller.dart';
import 'package:vbt_sun_app_project/utils/constant.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: prefer_const_constructors
        backgroundColor: Color(0xff567DF4),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 1.5.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Container(
                //alignment: Alignment.center,
                width: 350,
                height: 100,
                color: const Color(0xff567DF4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 3.75.h,
                          backgroundImage: AssetImage("assets/user.jpg"),
                        ),
                        SizedBox(
                          width: 1.5.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, Betul",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 2.h),
                            ),
                            Text(
                              "Good Morning",
                              style: TextStyle(
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3.125.h),
                        topRight: Radius.circular(3.125.h)),
                    color: Colors.white),
                child: Padding(
                  padding:
                      EdgeInsets.only(right: 2.5.h, left: 2.5.h, top: 1.25.h),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 25.h,
                          childAspectRatio: 0.18.h,
                          crossAxisSpacing: 2.5.h,
                          mainAxisSpacing: 2.5.h),
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [
                                DashboardColor.mainColor,
                                DashboardColor.whiteC
                              ]),
                              borderRadius: BorderRadius.circular(1.5.h)),
                          
                        );
                      }),
                ),
              ),
            ),
          ],
        ));
  }
}
