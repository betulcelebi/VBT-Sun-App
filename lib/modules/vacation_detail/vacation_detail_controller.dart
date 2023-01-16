import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../models/get_leaves_types_model.dart';
import '../../models/get_leaves_types_model.dart';
import '../../models/send_approval_model.dart';
import '../../shared/services/services.dart';

class VacationDetailController extends GetxController {
  String selectedStartDate = "Tarih Seç";
  String selectedEndDate = "Tarih Seç";
  TextEditingController addressController = TextEditingController();
  TextEditingController commentController = TextEditingController();
  Services servis = Services();

  GetLeavesTypesResponse? getLeavesTypesResponse;
  String selectedLeaveType = "İzin Türünü Seçiniz";

  getLeavesType() async {
    getLeavesTypesResponse = await servis.getLeavesTypes();
    getLeavesTypesResponse?.data?.insert(
      0,
      Datum(
        picklistVacationTypeName: "İzin Türünü Seçiniz",
      ),
    );
    update();
  }

  sendApproval() async {
    SendForApprovalResponse? sendApproval;

    if (selectedLeaveType == "İzin Türünü Seçiniz") {
      Get.snackbar("Uyarı", "Lütfen izin türünü seçiniz",
          backgroundColor: Colors.white);
      return;
    }
    if (selectedStartDate == "Tarih Seç") {
      Get.snackbar("Uyarı", "Lütfen izin başlangıç tarihi seçiniz",
          backgroundColor: Colors.white);
      return;
    }
    if (selectedEndDate == "Tarih Seç") {
      Get.snackbar("Uyarı", "Lütfen izin bitiş tarihi seçiniz",
          backgroundColor: Colors.white);
      return;
    }

    int? leaveType = getLeavesTypesResponse?.data
        ?.firstWhere(
            (element) => element?.picklistVacationTypeName == selectedLeaveType)
        ?.picklistVacationTypeId;
    sendApproval = await servis.sendForApprovals(
      sDate: DateFormat("yyyy-MM-dd")
          .format(DateTime.parse(
            selectedStartDate,
          ))
          .toString(),
      eDate: DateFormat("yyyy-MM-dd")
          .format(DateTime.parse(
            selectedEndDate,
          ))
          .toString(),
      differenceDay: DateTime.parse(selectedEndDate)
          .add(
            const Duration(days: 1),
          )
          .difference(DateTime.parse(selectedStartDate))
          .inDays,
      startDate: DateFormat("yyyy-MM-dd")
          .format(
            DateTime.parse(
              selectedEndDate,
            ).add(
              const Duration(days: 1),
            ),
          )
          .toString(),
      addres: addressController.text,
      comment: commentController.text,
      vacation: 0,
      picklistType: leaveType,
    );
    if (sendApproval.data?.success == true) {
      Get.back();
    }
    Get.snackbar(
      "Bilgi",
      sendApproval.data?.message ?? "Bir hata oluştu",
      backgroundColor: Colors.white,
    );
  }

  @override
  void onInit() {
    super.onInit();
    getLeavesType();
  }
}
