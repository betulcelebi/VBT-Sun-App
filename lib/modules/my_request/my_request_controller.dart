import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vbt_sun_app_project/models/my_request_model.dart';

import '../../shared/services/services.dart';

class MyRequestController extends GetxController {
  Services servis = Services();
  List filters = [
    {"id": "-1", "description": "Hepsi"},
    {"id": "0,4", "description": "Süreç Devam Ediyor / Revize edildi"},
    {"id": "0", "description": "Süreç Devam Ediliyor"},
    {"id": "1", "description": "Onaylandı"},
    {"id": "2", "description": "Reddedildi"},
    {"id": "4", "description": "Revize Edildi"},
    {"id": "6", "description": "Geri Gönderildi"},
  ];

  @override
  void onInit() {
    getMyRequest("0,4");
    super.onInit();
  }

  void name(params) {
    getMyRequest(filters[1]['id']);
  }

  MyRequestResponse? myRequestResponse = MyRequestResponse();
  getMyRequest(String workStatuArray) async {
    myRequestResponse = await servis.getMyRequest(workStatuArray);
    myRequestResponse!.data!.myRequestList!.length == 0
        ? Get.defaultDialog(
            title: "Mesaj",
            titleStyle: GoogleFonts.poppins(color: Color(0xff567DF4)),
            middleText: "Veri Bulunamadı",
            middleTextStyle: GoogleFonts.poppins(color: Colors.black),
            confirm: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  "Tamam",
                  style: GoogleFonts.poppins(color: Color(0xff567DF4)),
                )),
          )
        : null;
    update();
  }
}
