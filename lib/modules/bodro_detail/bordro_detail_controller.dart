import 'package:get/get.dart';

import '../../models/payroll_document_model.dart';
import '../../shared/services/services.dart';

class BordroDetailController extends GetxController {
  RxBool isLoading = false.obs;
  Services servis = Services();
  PayrollDocumentResponse documentResponse = PayrollDocumentResponse();

  @override
  void onInit() {
    getPayrollDocument();
    super.onInit();
  }

  getPayrollDocument() async {
    isLoading.value = false;
    documentResponse = (await servis.getPayroll())!;
    isLoading.value = true;
  }
}
