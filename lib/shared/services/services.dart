import 'dart:convert';

import 'package:get/get.dart';
import 'package:vbt_sun_app_project/models/employee_leave_model.dart';
import 'package:vbt_sun_app_project/models/home_page_info_model.dart';

import '../../models/payroll_document_model.dart';
import '../../models/payroll_view_model.dart';

class Services extends GetConnect {
  Future<PayrollDocumentResponse?> getPayroll() async {
    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'vbtauthorization':
          'qqZg4vKfjcN9+Y0Tu+FbBNpmgYVDhex9l0/VyyTvoOvFZLW9fEXPS/vWTgZgAVfL~241~string~638091643839742887',
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
          'qqZg4vKfjcN9+Y0Tu+FbBNpmgYVDhex9l0/VyyTvoOvFZLW9fEXPS/vWTgZgAVfL~241~string~638091643839742887',
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

  ///////////////////////////////
  Future<PayrollViewResponse?> getPayrollView(
      int? year, int? month, String? uid) async {
    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'vbtauthorization':
          'qqZg4vKfjcN9+Y0Tu+FbBNpmgYVDhex9l0/VyyTvoOvFZLW9fEXPS/vWTgZgAVfL~241~string~638091643839742887',
    };

    var data = {"YEAR": year, "MONTH": month, "DOCUMENTUID": uid};
    var url =
        'https://suniktest.suntekstil.com.tr/mobileapi/api/EmployeeDocuments/EmployeePayrollDownload';
    var res = await post(
      url,
      jsonEncode(data),
      headers: headers,
    );
    if (res.statusCode != 200) {
      throw Exception('http.post error: statusCode= ${res.statusCode}');
    }
    print(res.body);
    return PayrollViewResponse.fromJson(res.body);
  }

  // Future<EmployeeLeaveResponse?> getEmployeeLeave() async {
  //   var headers = {
  //     'Accept': 'application/json',
  //     'vbtauthorization':
  //         '1EeG9DucXqzvDn4qRWojPfmcqbYHD90+s/5n25GdGSBrzsBkggHCT2D+D11VDOF9~241~string~638091531410526189',
  //   };

  //   var url =
  //       'https://suniktest.suntekstil.com.tr/mobileapi/api/EmployeeLeave/GetEmployeeLeave';
  //   var res = await post(url, headers);
  //   if (res.statusCode != 200)
  //     throw Exception('http.post error: statusCode= ${res.statusCode}');
  //   print(res.body);
  //   return EmployeeLeaveResponse.fromJson(res.body);
  // }
}
