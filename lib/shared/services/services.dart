import 'dart:convert';

import 'package:get/get.dart';
import 'package:vbt_sun_app_project/models/home_page_info_model.dart';

import '../../models/payroll_document_model.dart';

class Services extends GetConnect {
  Future<PayrollDocumentResponse?> getPayroll() async {
    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'vbtauthorization':
          'AOLckeXRXPSmRwcTutJ+ymGD93PF5eaoHEGlzM4L7y0trs3EN5CZyQ8/GcyUA3+1~241~string~638090647143868248',
    };

    var data = {"Date": "2023-01-11T06:07:11.199Z"};

    var url =
        'https://suniktest.suntekstil.com.tr/mobileapi/api/EmployeeDocuments/GetPayrollPeriods';
    var res = await post(
      url,
      jsonEncode(data),
      headers: headers,
    );
    print(res.body);
    return PayrollDocumentResponse.fromJson(res.body);
  }

  ///////////////////////////////////////////////////////////////////////////

  Future<HomePageInfoResponse?> getHomePageInfo() async {
    var headers = {
      'Accept': 'application/json',
      'vbtauthorization':
          'AOLckeXRXPSmRwcTutJ+ymGD93PF5eaoHEGlzM4L7y0trs3EN5CZyQ8/GcyUA3+1~241~string~638090647143868248',
    };

    var params = {
      'isFirstLogin': 'true',
    };

    var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

    var url =
        'https://suniktest.suntekstil.com.tr/mobileapi/api/EmployeeReport/GetLandingPageInfo?$query';
    var res = await get(url, headers: headers);
    if (res.statusCode != 200) {
      throw Exception('http.get error: statusCode= ${res.statusCode}');
    }
    print(res.body);
    return HomePageInfoResponse.fromJson(res.body);
  }
}
