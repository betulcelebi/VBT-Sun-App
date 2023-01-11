import 'dart:convert';

import 'package:get/get.dart';

import '../../models/payroll_document_model.dart';

class Services extends GetConnect{


Future<PayrollDocumentResponse?>getPayroll() async {
  var headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'vbtauthorization': 'fJE1Q+Ww+HBaJ9BfZqkcxdaTwKOWJDNNfS/Dpp2WpOuEfBGAgCHLFIpvRkax/TaA~1~string~638090332475412152',
  };

  var data = { 
   "Date": "2023-01-11T06:07:11.199Z" 
 };

   var url = 'https://suniktest.suntekstil.com.tr/mobileapi/api/EmployeeDocuments/GetPayrollPeriods';
   var res = await post(url , jsonEncode(data), headers: headers,);
      print(res.body);
   return PayrollDocumentResponse.fromJson(res.body);


}
}