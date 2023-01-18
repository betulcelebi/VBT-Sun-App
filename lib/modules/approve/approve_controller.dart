import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vbt_sun_app_project/shared/services/services.dart';

import '../../models/approve_model.dart';

class ApproveController extends GetxController {
  List approvefilters = [
    {"id": "0,11,12,14,6", "description": "Hepsi"},
    {"id": "0", "description": "Süreç Devam Ediyor"},
    {"id": "11", "description": "Onayladıklarım"},
    {"id": "12", "description": "Reddettiklerim"},
    {"id": "14", "description": "Revize Ettiklerim"},
    {"id": "6", "description": "Geri Gönderilenler"},
  ];

  Services servis = Services();
  ApproveResponse? approveResponse = ApproveResponse();

  @override
  void onInit() {
    getApprove("0");
    super.onInit();
  }

  void approvename(params) {
    getApprove(approvefilters[0]['id']);
  }

  getApprove(String approveStatuArray) async {
    approveResponse = await servis.getApprove(approveStatuArray);
    approveResponse!.data!.pendingRequestList!.length == 0
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
