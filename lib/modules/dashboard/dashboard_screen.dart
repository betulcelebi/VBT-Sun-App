// ignore_for_file: avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/init/cache_manager.dart';
import 'package:vbt_sun_app_project/modules/dashboard/dashboard_controller.dart';
import 'package:vbt_sun_app_project/utils/constant.dart';

import '../../models/home_page_info_model.dart';
import '../../routes/app_pages.dart';

class DashboardScreen extends GetView<DashboardController> {
  DashboardScreen({super.key});

  int selectedIndex = 0;

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
                EdgeInsets.symmetric(horizontal: 3.75.w, vertical: 1.875.h),
            child: Container(
              //alignment: Alignment.center,
              width: 90.w,
              height: 12.5.h,
              color: const Color(0xff567DF4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 3.w),
                        child: CircleAvatar(
                          radius: 21.5.sp,
                          child: Image.asset(
                            "assets/profile.png",
                            width: 11.w,
                          ),
                          // backgroundImage: const AssetImage(
                          //   "assets/profile.png",
                          // ),
                          backgroundColor: Colors.white70,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Merhaba, ",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 17.5.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          GetBuilder<DashboardController>(
                              init: DashboardController(),
                              builder: (controller) {
                                if (controller.homeInfoResponse?.data == null) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                return Text(
                                  "${controller.homeInfoResponse!.data!.nameSurname!.toUpperCase().capitalize}",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600),
                                );
                              })
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
                    child: GetBuilder<DashboardController>(
                        init: DashboardController(),
                        builder: (controller) {
                          if (controller.homeInfoResponse?.data == null) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.NOTIFICATION);
                            },
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              const Center(
                                  child: Icon(Icons.notifications,
                                      color: Colors.white)),
                              CircleAvatar(
                                backgroundColor: Colors.red.withOpacity(0.9),
                                radius: 12.5.sp,
                                child: Text(
                                  controller.homeInfoResponse!.data!
                                      .unReadedNotificationCount
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                          );
                        }),
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
                padding: EdgeInsets.only(right: 5.w, left: 5.w, top: 1.25.h),
                child: GetBuilder<DashboardController>(
                    init: DashboardController(),
                    builder: (controller) {
                      if (controller.homeInfoResponse?.data == null) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Builder(
                              builder: (context) {
                                List<MenuInfo>? list = controller
                                    .homeInfoResponse!.data!.menuInfo
                                    ?.where((element) =>
                                        element.mENUTYPE == "Matriks")
                                    .toList();
                                bool isManager =
                                    CacheManager.instance.getValue("isManager");
                                if (!isManager) {
                                  list?.removeWhere((element) =>
                                      element.mENUNAME == "MyTeam");
                                }

                                list?.removeWhere((element) =>
                                    element.mENUNAME == "MyProfile" ||
                                    element.mENUNAME == "SunAkademi");
                                return GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 0.18.h,
                                    crossAxisSpacing: 2.5.h,
                                    mainAxisSpacing: 5.w,
                                  ),
                                  shrinkWrap: true,
                                  itemCount: list!.isEmpty ? 1 : list.length,
                                  itemBuilder: (BuildContext ctx, index) {
                                    if (list.isEmpty) {
                                      return const SizedBox();
                                    }
                                    return GestureDetector(
                                      onTap: () {
                                        if (index == 0) {
                                          Get.toNamed(Routes.MYREQUEST);
                                        } else if (index == 1) {
                                          Get.toNamed(Routes.APPROVE);
                                        } else if (index == 2) {
                                          Get.toNamed(Routes.WORKS);
                                        } else if (index == 3) {
                                          Get.toNamed(Routes.TEAM, arguments: {
                                            'id': controller.homeInfoResponse!
                                                .data!.idHrEmployee
                                          });
                                        }
                                      },
                                      child: Container(
                                        decoration: DashboardConstant().decType,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 3.w, top: 2.5.h),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.all(7.sp),
                                                  width: 5.h,
                                                  height: 5.h,
                                                  decoration:
                                                      DashboardConstant()
                                                          .miniDec,
                                                  child: Image.asset(
                                                    DashboardConstant()
                                                        .gimagePath[index],
                                                  )),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Text(
                                                list[index].mENUNAME ?? "",
                                                style: DashboardConstant()
                                                    .gridText,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                            Builder(
                              builder: (context) {
                                if (controller.homeInfoResponse?.data == null) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                List<MenuInfo>? list = controller
                                    .homeInfoResponse!.data!.menuInfo
                                    ?.where((element) =>
                                        element.mENUTYPE == "Single")
                                    .toList();
                                return ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: list!.isEmpty ? 1 : list.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (context, index) {
                                    if (list.isEmpty) {
                                      return const SizedBox();
                                    }
                                    return GestureDetector(
                                      onTap: () {
                                        if (index == 0) {
                                          Get.toNamed(Routes.BORDRODETAIL);
                                        } else if (index == 1) {
                                          Get.toNamed(Routes.VACATION);
                                        }
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 90.w,
                                        height: 10.h,
                                        margin:
                                            EdgeInsets.only(bottom: 1.875.h),
                                        decoration: DashboardConstant().decType,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 3.w, right: 3.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 5.h,
                                                    height: 5.h,
                                                    padding:
                                                        EdgeInsets.all(7.sp),
                                                    decoration:
                                                        DashboardConstant()
                                                            .miniDec,
                                                    child: Image.asset(
                                                      DashboardConstant()
                                                          .limagePath[index],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 1.6.w,
                                                  ),
                                                  Text(
                                                    list[index].mENUNAME ?? "",
                                                    style: DashboardConstant()
                                                        .gridText,
                                                  )
                                                ],
                                              ),
                                              Icon(Icons.chevron_right,
                                                  size: 24.sp,
                                                  color: Colors.white
                                                  //color:
                                                  //    DashboardConstant.mainColor,
                                                  ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
