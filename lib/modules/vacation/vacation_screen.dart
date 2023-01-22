import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/vacation/vacation_controller.dart';
import 'package:vbt_sun_app_project/modules/vacation/vacation_info.dart';
import 'package:vbt_sun_app_project/routes/app_pages.dart';

import '../../init/cache_manager.dart';

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
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back,
                          size: 4.h, color: Colors.white)),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.VACATIONDETAIL);
                    },
                    child: Container(
                        padding: EdgeInsets.all(1.3.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.25.h),
                            color: Colors.white.withOpacity(0.15)),
                        width: 5.h,
                        height: 5.h,
                        child: Image.asset(
                          "assets/plus.png",
                          color: Colors.white,
                        )),
                  )
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
                ),
              ),
              width: double.infinity,
              child: GetBuilder<VacationController>(
                builder: (controller) {
                  bool isManager = CacheManager.instance.getValue("isManager");

                  return Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: 10.h,
                        //color: Colors.amber,
                        padding: EdgeInsets.symmetric(
                            vertical: 1.25.h, horizontal: 5.5.w),
                        child: CupertinoSlidingSegmentedControl<int>(
                          backgroundColor: CupertinoColors.white,
                          thumbColor: const Color(0xff567DF4),
                          padding: EdgeInsets.all(13.sp),
                          groupValue: controller.groupValue,
                          children: isManager == true
                              ? {
                                  0: Text(
                                    "İzinlerim",
                                    style: GoogleFonts.poppins(
                                      color: controller.groupValue == 0
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 15.5.sp,
                                    ),
                                  ),
                                  1: Text(
                                    "Kullanıcı İzinleri",
                                    style: GoogleFonts.poppins(
                                        color: controller.groupValue == 1
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 15.5.sp),
                                  ),
                                  2: Text(
                                    "İzin Takvimi",
                                    style: GoogleFonts.poppins(
                                        color: controller.groupValue == 2
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 15.5.sp),
                                  ),
                                }
                              : {
                                  0: Text(
                                    "İzinlerim",
                                    style: GoogleFonts.poppins(
                                        color: controller.groupValue == 0
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 15.5.sp),
                                  ),
                                  1: Text(
                                    "İzin Takvimi",
                                    style: GoogleFonts.poppins(
                                      color: controller.groupValue == 1
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 15.5.sp,
                                    ),
                                  )
                                },
                          onValueChanged: (value) {
                            controller.groupValue = value!;
                            controller.pageController.animateToPage(
                              value,
                              curve: Curves.decelerate,
                              duration: const Duration(milliseconds: 300),
                            );
                            controller.update();
                          },
                        ),
                      ),
                      Expanded(
                        child: PageView(
                          controller: controller.pageController,
                          onPageChanged: ((value) {
                            controller.groupValue = value;
                            controller.update();
                          }),
                          children: isManager == true
                              ? const [
                                  VacationScreen(),
                                  UserPermissions(),
                                  PermissionCalendar(),
                                ]
                              : const [
                                  VacationScreen(),
                                  PermissionCalendar(),
                                ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PermissionCalendar extends StatelessWidget {
  const PermissionCalendar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VacationController>(builder: (controller) {
      return Center(child: Text("İzin Takvimi Henüz Yapılmadı."));
    });
  }
}

class UserPermissions extends StatelessWidget {
  const UserPermissions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VacationController>(
      builder: (c) {
        if (c.subEmployeesLeaveResponse == null) {
          return const SizedBox();
        }
        return ListView.builder(
          padding: EdgeInsets.only(top: 1.h),
          shrinkWrap: true,
          itemCount: c.subEmployeesLeaveResponse?.data?.employeeEarnedRightsList
                  ?.length ??
              0,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.7.w, vertical: 1.h),
              child: GestureDetector(
                onTap: () {
                  Get.to(
                    () => VacationInfoScreen(
                      item: c.subEmployeesLeaveResponse?.data
                          ?.employeeEarnedRightsList?[index],
                    ),
                  );
                },
                child: Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.sp),
                    boxShadow: kElevationToShadow[1],
                  ),
                  padding: EdgeInsets.all(14.sp),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "${c.subEmployeesLeaveResponse?.data?.employeeEarnedRightsList?[index].eMPLOYEENAME ?? ""} ${c.subEmployeesLeaveResponse?.data?.employeeEarnedRightsList?[index].eMPLOYEESURNAME ?? ""}",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 15.sp),
                            ),
                            Text(
                              c
                                      .subEmployeesLeaveResponse
                                      ?.data
                                      ?.employeeEarnedRightsList?[index]
                                      .pOSITIONNAME ??
                                  "",
                              style: GoogleFonts.poppins(fontSize: 15.sp),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 2, 234, 95),
                            borderRadius: BorderRadius.circular(12.sp)),
                        child: Text(
                            "${c.subEmployeesLeaveResponse?.data?.employeeEarnedRightsList?[index].aNNUALLEAVEBALANCE ?? ""}",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class VacationScreen extends StatelessWidget {
  const VacationScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VacationController>(builder: (controller) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 1.25.h, horizontal: 5.7.w),
        child: Column(
          children: [
            Container(
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
              width: 90.w,
              height: 12.h,
              child: Padding(
                padding: EdgeInsets.only(left: 3.w, top: 1.h, bottom: 1.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 2, 234, 95),
                          radius: 15.sp,
                          child: Icon(
                            Icons.check,
                            size: 20.sp,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 1.w),
                          child: Text(
                            "İzin hak ediş tarihi  : ",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 2, 234, 95),
                            )),
                          ),
                        ),
                        Text(
                          '${controller.dashboardController.homeInfoResponse?.data?.vacationInfo?.employeeEarnedRightsList?[0].nEXTLEAVEALLOWANCEDATE?.split(" ").first.substring(0, 10) ?? ""}',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff567DF4),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          " İzin hak ediş gün sayısı      : ",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
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
                              fontWeight: FontWeight.w500,
                              color: Color(0xff567DF4),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          " İzin bakiyesi                             : ",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
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
                              fontWeight: FontWeight.w500,
                              color: Color(0xff567DF4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.5.h),
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
                width: 90.w,
                height: 18.h,
                child: GetBuilder<VacationController>(
                  init: VacationController(),
                  builder: (controller) {
                    if (controller.employeeLeaveResponse!.data == null) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.employeeLeaveResponse!.data!
                          .employeeLeaveList!.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 2.w, right: 2.w),
                          child: Card(
                            elevation: 9.sp,
                            shadowColor: Color(0xff567DF4),
                            surfaceTintColor: Color(0xff567DF4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.5.h),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 3.w,
                                      top: 1.h,
                                      bottom: 1.h,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          controller
                                                  .employeeLeaveResponse!
                                                  .data!
                                                  .employeeLeaveList![index]
                                                  .pICKLISTVACATIONTYPENAME ??
                                              "",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '${controller.employeeLeaveResponse?.data?.employeeLeaveList?[index].sDATE?.split(" ").first.substring(0, 10) ?? " "} / ${controller.employeeLeaveResponse?.data?.employeeLeaveList?[index].eDATE?.split(" ").first.substring(0, 10) ?? " "} ',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          controller
                                                      .employeeLeaveResponse!
                                                      .data!
                                                      .employeeLeaveList![index]
                                                      .iSUSED ==
                                                  true
                                              ? "Kullandım"
                                              : "Kullanmadım",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 1.5.w),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(1.25.h),
                                      color: Color.fromARGB(255, 2, 234, 95),
                                    ),
                                    width: 6.h,
                                    height: 6.h,
                                    child: Center(
                                      child: Text(
                                        '${controller.employeeLeaveResponse?.data?.employeeLeaveList?[index].dAY ?? ""}',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600),
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
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
