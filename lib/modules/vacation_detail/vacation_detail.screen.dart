import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/vacation_detail/vacation_detail_controller.dart';

import '../../models/get_leaves_types_model.dart';

class VacationDetail extends GetView<VacationDetailController> {
  const VacationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff567DF4),
      body: GetBuilder<VacationDetailController>(
        builder: (controller) {
          return Column(
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
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200.h,
                  decoration: const BoxDecoration(
                    color: Color(0xffF6F6F7),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 4.h, horizontal: 2.5.h),
                    child: GetBuilder<VacationDetailController>(
                        init: VacationDetailController(),
                        builder: (controller) {
                          if (controller.getLeavesTypesResponse == null) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return SingleChildScrollView(
                            child: Container(
                              height: 80.h,
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
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(2.h),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "İzin türü",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            color: Color(0xff567DF4),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 1.h),
                                      margin: EdgeInsets.only(
                                          right: 1.h), //dropdownbutton right
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(2.h),
                                        border: Border.all(
                                          color: const Color(0xFFE8E8E8),
                                        ),
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                          isExpanded: true,
                                          value: controller.selectedLeaveType,
                                          items: controller
                                              .getLeavesTypesResponse?.data!
                                              .map<DropdownMenuItem<String>>(
                                                  (Datum? items) {
                                            return DropdownMenuItem(
                                              value: items
                                                      ?.picklistVacationTypeName ??
                                                  "İzin Türünü Seçiniz",
                                              child: Text(
                                                items?.picklistVacationTypeName ??
                                                    "İzin Türünü Seçiniz",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 15.sp,
                                                    color:
                                                        Colors.grey.shade500),
                                              ),
                                            );
                                          }).toList(),
                                          onChanged: (String? value) {
                                            controller.selectedLeaveType =
                                                value.toString();

                                            controller.update();
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.h),
                                      child: Text(
                                        "İzin Başlangıç Tarihi",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 16.sp,
                                              color: Color(0xff567DF4),
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                    MaterialButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate:
                                              DateTime(DateTime.now().year + 1),
                                        ).then(
                                          (value) {
                                            if (value != null) {
                                              controller.selectedStartDate =
                                                  value.toString();
                                              controller.update();
                                            }
                                          },
                                        );
                                      },
                                      child: Text(
                                        controller.selectedStartDate !=
                                                "Tarih Seç"
                                            ? DateFormat("dd.MM.yyyy").format(
                                                DateTime.parse(
                                                  controller.selectedStartDate,
                                                ),
                                              )
                                            : "Tarih Seçiniz",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15.sp,
                                            color: Colors.grey.shade500),
                                      ),
                                    ),
                                    Text(
                                      "İzin Bitiş Tarihi",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            color: Color(0xff567DF4),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    MaterialButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate:
                                              DateTime(DateTime.now().year + 1),
                                        ).then(
                                          (value) {
                                            if (value != null) {
                                              controller.selectedEndDate =
                                                  value.toString();
                                              controller.update();
                                            }
                                          },
                                        );
                                      },
                                      child: Text(
                                          controller.selectedEndDate !=
                                                  "Tarih Seç"
                                              ? DateFormat("dd.MM.yyyy").format(
                                                  DateTime.parse(
                                                    controller.selectedEndDate,
                                                  ),
                                                )
                                              : "Tarih Seçiniz",
                                          style: GoogleFonts.poppins(
                                              fontSize: 15.sp,
                                              color: Colors.grey.shade500)),
                                    ),
                                    SizedBox(
                                      width: 80.w,
                                      //color: Colors.green,
                                      child: Text(
                                        "İşe Başlama Tarihi",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 16.sp,
                                              color: Color(0xff567DF4),
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                          controller.selectedEndDate !=
                                                  "Tarih Seç"
                                              ? DateFormat("dd.MM.yyyy")
                                                  .format(DateTime.parse(
                                                  controller.selectedEndDate,
                                                ).add(
                                                  const Duration(days: 1),
                                                ))
                                              : "-",
                                          style: GoogleFonts.poppins(
                                              fontSize: 15.sp,
                                              color: Colors.grey.shade500)),
                                    ),
                                    Text(
                                      "İzin Gün Sayısı",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            color: Color(0xff567DF4),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Container(
                                      child: controller.selectedEndDate !=
                                                  "Tarih Seç" &&
                                              controller.selectedStartDate !=
                                                  "Tarih Seç"
                                          ? Text(
                                              DateTime.parse(
                                                controller.selectedEndDate,
                                              )
                                                  .add(
                                                    const Duration(days: 1),
                                                  )
                                                  .difference(
                                                    DateTime.parse(
                                                      controller
                                                          .selectedStartDate,
                                                    ),
                                                  )
                                                  .inDays
                                                  .toString(),
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15.sp,
                                                  color: Colors.grey.shade500))
                                          : Container(),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 2.h),
                                      child: Text(
                                        "İzni Geçirdiği Adres/Telefon",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 16.sp,
                                              color: Color(0xff567DF4),
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                    TextFormField(
                                      cursorColor: const Color(0xff567DF4),
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0.2.h,
                                                color: const Color(
                                                    0xff567DF4)), //<-- SEE HERE
                                            borderRadius:
                                                BorderRadius.circular(2.h),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0.2.h,
                                                color: Colors.grey
                                                    .shade300), //<-- SEE HERE
                                            borderRadius:
                                                BorderRadius.circular(2.h),
                                          ),
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          contentPadding: EdgeInsets.all(2.5.h),
                                          hintText: "",
                                          hintStyle: GoogleFonts.poppins(
                                              color: const Color(0xff567DF4),
                                              fontSize: 15.sp)),
                                    ),
                                    Text(
                                      "Açıklama",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            color: Color(0xff567DF4),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    TextFormField(
                                      cursorColor: const Color(0xff567DF4),
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0.2.h,
                                                color: const Color(
                                                    0xff567DF4)), //<-- SEE HERE
                                            borderRadius:
                                                BorderRadius.circular(2.h),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0.2.h,
                                                color: Colors.grey
                                                    .shade300), //<-- SEE HERE
                                            borderRadius:
                                                BorderRadius.circular(2.h),
                                          ),
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          contentPadding: EdgeInsets.all(2.5.h),
                                          hintText: "",
                                          hintStyle: GoogleFonts.poppins(
                                              color: const Color(0xff567DF4),
                                              fontSize: 15.sp)),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        controller.sendApproval();
                                      },
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 1.5.h),
                                          alignment: Alignment.center,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2,
                                          height: 5.h,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  blurStyle: BlurStyle.inner,
                                                  color: const Color(0xff567DF4)
                                                      .withOpacity(0.8),
                                                  blurRadius: 0.75.h,
                                                  spreadRadius: 0.375.h,
                                                  offset: Offset(
                                                    0.25.h,
                                                    0.25.h,
                                                  ),
                                                )
                                              ],
                                              color: const Color(0xffEEF0FC),
                                              borderRadius:
                                                  BorderRadius.circular(1.5.h)),
                                          child: Center(
                                            child: Text(
                                              "Uygula",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16.sp,
                                                  color: Color(0xff567DF4),
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
