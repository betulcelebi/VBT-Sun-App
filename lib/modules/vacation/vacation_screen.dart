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
                        height: 80,
                        padding: EdgeInsets.all(4),
                        child: CupertinoSlidingSegmentedControl<int>(
                          backgroundColor: CupertinoColors.white,
                          thumbColor: const Color(0xff567DF4),
                          padding: EdgeInsets.all(8),
                          groupValue: controller.groupValue,
                          children: isManager == true
                              ? {
                                  0: Text(
                                    "İzinlerim",
                                    style: TextStyle(
                                      color: controller.groupValue == 0
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  1: Text(
                                    "Kullanıcı İzinleri",
                                    style: TextStyle(
                                      color: controller.groupValue == 1
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  2: Text(
                                    "İzin Takvimi",
                                    style: TextStyle(
                                      color: controller.groupValue == 2
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                }
                              : {
                                  0: Text(
                                    "İzinlerim",
                                    style: TextStyle(
                                      color: controller.groupValue == 0
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  1: Text(
                                    "İzin Takvimi",
                                    style: TextStyle(
                                      color: controller.groupValue == 1
                                          ? Colors.white
                                          : Colors.black,
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
          shrinkWrap: true,
          itemCount: c.subEmployeesLeaveResponse?.data?.employeeEarnedRightsList
                  ?.length ??
              0,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
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
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: kElevationToShadow[1],
                  ),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "${c.subEmployeesLeaveResponse?.data?.employeeEarnedRightsList?[index].eMPLOYEENAME ?? ""} ${c.subEmployeesLeaveResponse?.data?.employeeEarnedRightsList?[index].eMPLOYEESURNAME ?? ""}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              c
                                      .subEmployeesLeaveResponse
                                      ?.data
                                      ?.employeeEarnedRightsList?[index]
                                      .pOSITIONNAME ??
                                  "",
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                            "${c.subEmployeesLeaveResponse?.data?.employeeEarnedRightsList?[index].aNNUALLEAVEBALANCE ?? ""}",
                            style: TextStyle(color: Colors.white)),
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
      return Column(
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
                        color: const Color(0xff48D380),
                        borderRadius: BorderRadius.circular(15)),
                    width: 7.w,
                    height: 3.5.h,
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2.0.h),
                    child: Text(
                      "İzin hak ediş tarihi : ",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff48D380),
                      )),
                    ),
                  ),
                  Text(
                    '${controller.dashboardController.homeInfoResponse?.data?.vacationInfo?.employeeEarnedRightsList?[0].nEXTLEAVEALLOWANCEDATE?.split(" ").first.substring(0, 10) ?? ""}',
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
                  itemCount: controller
                      .employeeLeaveResponse!.data!.employeeLeaveList!.length,
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
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff48D380),
                              ),
                              width: 18.w,
                              height: 5.h,
                              child: Center(
                                child: Text(
                                  '${controller.employeeLeaveResponse?.data?.employeeLeaveList?[index].dAY ?? ""}',
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
                );
              },
            ),
          ),
        ],
      );
    });
  }
}
