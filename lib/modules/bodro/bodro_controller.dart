import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:vbt_sun_app_project/models/payroll_document_model.dart';

import '../../models/payroll_view_model.dart';
import '../../shared/services/services.dart';

class BordroController extends GetxController {
  RxBool isBordroViewLoading = false.obs;
  Uint8List? resultPdf;

  Services servis = Services();
  PayrollViewResponse payrollViewResponse = PayrollViewResponse();
  PayrollDocumentResponse payrollDocumentResponse = PayrollDocumentResponse();

  getPayrollViewDocument(year,month,uid) async {
    isBordroViewLoading.value = false;

    payrollViewResponse = (await servis.getPayrollView(year,month,uid))!;
    resultPdf = base64.decode(payrollViewResponse.data.toString());
    isBordroViewLoading.value = true;
  }
}
