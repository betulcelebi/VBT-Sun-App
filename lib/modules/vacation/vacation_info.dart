import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/vacation/vacation_controller.dart';

import '../../models/sub_employees_leave_model.dart';

class VacationInfoScreen extends StatelessWidget {
  const VacationInfoScreen({super.key, required this.item});
  final EmployeeEarnedRightsList? item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 53.75.h,
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
          Padding(
            padding: EdgeInsets.only(top: 1.5.h, left: 0.5.h, right: 0.5.h),
            child: Container(
              height: 5.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Yıllık İzin Bakiyesi:"),
                  Text(" ${item?.aNNUALLEAVEBALANCE ?? ""}"),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.5.h, left: 0.5.h, right: 0.5.h),
            child: Container(
              height: 5.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("İlgili Yıl Hakediş Tarihi:"),
                  Text(
                      "${item?.nEXTLEAVEALLOWANCEDATE!.split(" ").first.substring(0, 10) ?? ""}"),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.5.h, left: 0.5.h, right: 0.5.h),
            child: Container(
              height: 5.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("İlgili Yıl İzin Hakediş Gün Sayısı: "),
                  Text(" ${item?.nEXTLEAVEALLOWANCEDAYS ?? ""}"),
                ],
              ),
            ),
          ),
          GetBuilder<VacationController>(
            builder: (controller) {
              List<EmployeeLeaveList>? list = controller
                  .subEmployeesLeaveResponse?.data?.employeeLeaveList
                  ?.where((element) {
                return element.iDHREMPLOYEE == item?.iDHREMPLOYEE;
              }).toList();
              if (list?.length == 0) {
                return const SizedBox();
              } else {
                return Column(
                  children: list!
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "${e.sDATE!.split(" ").first.substring(0, 10) ?? ""}"),
                                      Text(
                                          "${e.eDATE!.split(" ").first.substring(0, 10) ?? ""}"),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Text("${e.dAY ?? ""}",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Text(" Gün",
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
