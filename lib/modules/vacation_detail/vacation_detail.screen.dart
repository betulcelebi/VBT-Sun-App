//import 'dart:js';

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
      backgroundColor: const Color(0xff567DF4),
      body: SingleChildScrollView(
        child: GetBuilder<VacationDetailController>(
          builder: (controller) {
            if (controller.getLeavesTypesResponse == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.0.h),
                  child: SizedBox(
                    width: double.infinity,
                    height: 12.5.h,
                    //color: Colors.red,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 2.0.h, right: 3.5.h, top: 0.5.h),
                      child: Row(
                        children: [
                          Expanded(
                            //17 32
                            flex: 1,
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(
                                Icons.arrow_back,
                                size: 4.h,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          // Padding(
                          // padding: EdgeInsets.only(left: 12.0.h),
                          //child:
                          Expanded(
                            flex: 2,
                            child: Text(
                              "İzin Talebi",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100.h,
                  decoration: const BoxDecoration(
                    color: Color(0xffF6F6F7),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.0.h, left: 1.h),
                        child: SizedBox(
                          width: 80.w,
                          height: 5.h,
                          //color: Colors.green,
                          child: Text(
                            "İzin türü",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color(0xFFE8E8E8),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            DropdownButton<String>(
                              value: controller.selectedLeaveType,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: controller.getLeavesTypesResponse?.data!
                                  .map<DropdownMenuItem<String>>(
                                      (Datum? items) {
                                return DropdownMenuItem(
                                  value: items?.picklistVacationTypeName ??
                                      "İzin Türünü Seçiniz",
                                  child: Text(items?.picklistVacationTypeName ??
                                      "İzin Türünü Seçiniz"),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                controller.selectedLeaveType = value.toString();

                                controller.update();
                              },
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 80.w,
                          //color: Colors.green,
                          child: Text(
                            "İzin Başlangıç Tarihi",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(DateTime.now().year + 1),
                          ).then(
                            (value) {
                              if (value != null) {
                                controller.selectedStartDate = value.toString();
                                controller.update();
                              }
                            },
                          );
                        },
                        child: Text(
                          controller.selectedStartDate != "Tarih Seç"
                              ? DateFormat("dd.MM.yyyy").format(
                                  DateTime.parse(
                                    controller.selectedStartDate,
                                  ),
                                )
                              : "Tarih Seçiniz",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 80.w,
                          //color: Colors.green,
                          child: Text(
                            "İzin Başlangıç Tarihi",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(DateTime.now().year + 1),
                          ).then(
                            (value) {
                              if (value != null) {
                                controller.selectedEndDate = value.toString();
                                controller.update();
                              }
                            },
                          );
                        },
                        child: Text(
                          controller.selectedEndDate != "Tarih Seç"
                              ? DateFormat("dd.MM.yyyy").format(
                                  DateTime.parse(
                                    controller.selectedEndDate,
                                  ),
                                )
                              : "Tarih Seçiniz",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 80.w,
                          //color: Colors.green,
                          child: Text(
                            "İşe Başlama Tarihi",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          controller.selectedEndDate != "Tarih Seç"
                              ? DateFormat("dd.MM.yyyy").format(DateTime.parse(
                                  controller.selectedEndDate,
                                ).add(
                                  const Duration(days: 1),
                                ))
                              : "Tarih Seçiniz",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 80.w,
                          //color: Colors.green,
                          child: Text(
                            "İzin Gün Sayısı",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.grey.shade400)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: controller.selectedEndDate != "Tarih Seç" &&
                                  controller.selectedStartDate != "Tarih Seç"
                              ? Text(DateTime.parse(
                                  controller.selectedEndDate,
                                )
                                  .add(
                                    const Duration(days: 1),
                                  )
                                  .difference(
                                    DateTime.parse(
                                      controller.selectedStartDate,
                                    ),
                                  )
                                  .inDays
                                  .toString())
                              : Container(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 80.w,
                          //color: Colors.green,
                          child: Text(
                            "İzni Geçirdiği Adres/Telefon",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 10.h,
                          // color: Colors.green,
                          child: TextFormField(
                            controller: controller.addressController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              //labelText: 'Enter your username',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 80.w,
                          //color: Colors.green,
                          child: Text(
                            "Açıklama",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 10.h,
                          // color: Colors.green,
                          child: TextFormField(
                            controller: controller.commentController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              //labelText: 'Enter your username',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 0.5.h, left: 4.h, right: 4.h),
                        child: GestureDetector(
                          onTap: () {
                            controller.sendApproval();
                          },
                          child: Container(
                            width: double.infinity,
                            height: 4.h,
                            color: const Color(0xff567DF4),
                            child: Center(child: Text("Uygula")),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
