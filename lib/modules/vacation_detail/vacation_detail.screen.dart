//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/vacation_detail/vacation_detail_controller.dart';


class VacationDetail extends GetView<VacationDetailController> {
  RxString dropdownvalue = 'Yıllık İzin'.obs;

  var items = [
    'Yıllık İzin',
    'İdari İzin',
    'Ücretsiz İzin',
    'Nikah + Düğün',
    'Eşin doğum Yapması',
    'Çocuğun Evlenmei Halinde',
    'Çocuğun Sünneti',
    'Yangın,Sel,Deprem Vb Doğal Afet Halinde',
    'Çalışanın Eşi Veya Çocuğunun Ölümü Halinde',
    'Anne Baba Kardeş Ölümü Halinde',
    'Torun Büyükanne Büyükbaba Ölümü Halinde',
    'Eşin Anne ve Babasının Ölümü Halinde',
  ].obs;
  DateTime _dateTime = DateTime.now();

  // void _showDatePicker() {
  //   showDatePicker(
  //       context: context,
  //       initialDate: DateTime.now(),
  //       firstDate: DateTime(2000),
  //       lastDate: DateTime(2025));
  // }

  //const
  VacationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff567DF4),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.0.h),
            child: Container(
              width: double.infinity,
              height: 8.h,
              //color: Colors.red,
              child: Padding(
                padding: EdgeInsets.only(left: 2.0.h, right: 3.5.h, top: 0.5.h),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      //17 32
                      flex: 1,
                      child: Icon(
                        Icons.arrow_back,
                        size: 4.h,
                        color: Colors.white,
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
                  padding: EdgeInsets.only(
                    top: 5.0.h,left:1.h
                  ),
                  child: Container(
                    width: 80.w,
                    height: 5.h,
                    //color: Colors.green,
                    child: Text(
                      "İzin türü",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 16.sp, color: Colors.grey.shade400)),
                    ),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        // boxShadow: [
                        //   LoginConstant()
                        //       .textFieldShadow,
                        // ],
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xFFE8E8E8))),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Obx(() => DropdownButton<String>(
                              value: dropdownvalue.value,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: items.map<DropdownMenuItem<String>>(
                                  (String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                dropdownvalue.value = value.toString();
                              },
                            ))
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 80.w,
                    //color: Colors.green,
                    child: Text(
                      "İzin Başlangıç Tarihi",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 16.sp, color: Colors.grey.shade400)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    child: MaterialButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2025),
                        ).then((value) =>
                            {controller.selecteddate.value = value.toString()});
                      },
                      child:
                          Obx(() => Text(controller.selecteddate.toString())),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 80.w,
                    //color: Colors.green,
                    child: Text(
                      "İzin Bitiş Tarihi",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 16.sp, color: Colors.grey.shade400)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    child: MaterialButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2025),
                        ).then((value) => {
                              controller.selecteddatee.value = value.toString(),
                              controller.tiklandimi.value = true
                            });
                      },
                      child:
                          Obx(() => Text(controller.selecteddatee.toString())),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 80.w,
                    //color: Colors.green,
                    child: Text(
                      "İşe Başlama Tarihi",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 16.sp, color: Colors.grey.shade400)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Obx(() => controller.tiklandimi.value
                        ? Text(DateTime.parse(controller.selecteddatee.toString())
                            .add(Duration(days: 1))
                            .toString())
                        : Container()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 80.w,
                    //color: Colors.green,
                    child: Text(
                      "İzin Gün Sayısı",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 16.sp, color: Colors.grey.shade400)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Obx(() => controller.tiklandimi.value
                        ? Text(DateTime.parse(controller.selecteddatee.toString())
                            .difference(
                                DateTime.parse(controller.selecteddate.toString()))
                            .inDays
                            .toString())
                        : Container()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 80.w,
                    //color: Colors.green,
                    child: Text(
                      "İzni Geçirdiği Adres/Telefon",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 16.sp, color: Colors.grey.shade400)),
                    ),
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width:double.infinity,
                    height: 10.h,
                   // color: Colors.green,
                    child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              //labelText: 'Enter your username',
            ),
          ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 80.w,
                    //color: Colors.green,
                    child: Text(
                      "Açıklama",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 16.sp, color: Colors.grey.shade400)),
                    ),
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width:double.infinity,
                    height: 10.h,
                   // color: Colors.green,
                    child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              //labelText: 'Enter your username',
            ),
          ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top:0.5.h),
                  child: Container(
                    width: double.infinity,
                    height: 4.h,
                    color:  const Color(0xff567DF4),
                    child: Center(child: Text("Uygula")),
                  ),
                )

              ],
            ),
          ),
          
        ],
      )),
    );
  }
}
