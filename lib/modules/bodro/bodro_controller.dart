import 'package:get/get.dart';
import 'package:vbt_sun_app_project/shared/services/services.dart';

import '../../models/payroll_document_model.dart';

class BordroController extends GetxController {
  Services servis=Services();
  RxBool isLoading=false.obs;
  PayrollDocumentResponse? documentResponse=PayrollDocumentResponse();
  
  @override
  void onInit() {
   getPayrollDocument();
    super.onInit();
  }


  getPayrollDocument()  async {
  isLoading.value=false;
  documentResponse= await servis.getPayroll();
   isLoading.value=true;
  }
}