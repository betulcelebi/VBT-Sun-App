import 'dart:convert';

import 'package:get/get.dart';
import 'package:vbt_sun_app_project/init/cache_manager.dart';
import 'package:vbt_sun_app_project/models/employee_leave_model.dart';
import 'package:vbt_sun_app_project/models/home_page_info_model.dart';

import '../../models/firms_model.dart';
import '../../models/login_model.dart';
import '../../models/my_request_model.dart';
import '../../models/my_works_model.dart';
import '../../models/notifications_model.dart';
import '../../models/payroll_document_model.dart';
import '../../models/payroll_view_model.dart';

class Services extends GetConnect {
  String token = CacheManager.instance.getValue("token");
  Services() {
    timeout = const Duration(seconds: 60);
    maxAuthRetries = 3;
  }

  Future<PayrollDocumentResponse?> getPayroll() async {
    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'vbtauthorization': token,
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
    // String token = CacheManager.instance.getValue("token");
    var headers = {
      'Accept': 'application/json',
      'vbtauthorization': token,
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
      'vbtauthorization': token,
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

  Future<EmployeeLeave?> getEmployeeLeave() async {
    var headers = {
      'Accept': 'application/json',
      'vbtauthorization': token,
    };

    var url =
        'https://suniktest.suntekstil.com.tr/mobileapi/api/EmployeeLeave/GetEmployeeLeave';
    var res = await post(url, "", headers: headers);
    if (res.statusCode != 200)
      throw Exception('http.post error: statusCode= ${res.statusCode}');
    print(res.body);
    return EmployeeLeave.fromJson(res.body);
  }
  //BURASI FİLTERELEME İŞLEMİ YAPARKEN BAK  MY_REQUEST
  // Future<MyRequestResponse?> getMyRequest(String statuArray) async {
  //   var headers = {
  //     'Accept': 'application/json',
  //     'vbtauthorization':
  //         'xpRydl/3Xt9v1wWOX/2YiueTW8JtRZDCO4dK2G265o0V4gS560113Cr6zps9fn5K~241~string~638092417769767153',
  //   };

  //   var params = {
  //     'statuArray': statuArray,
  //   };
  //   var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

  //   var url =
  //       'https://suniktest.suntekstil.com.tr/mobileapi/api/RequestManagement/GetMyRequestMasterMobile?$query';
  //   var res = await post(url, "", headers: headers);
  //   if (res.statusCode != 200)
  //     throw Exception('http.post error: statusCode= ${res.statusCode}');
  //   print(res.body);
  //   return MyRequestResponse.fromJson(res.body);
  // }

  Future<MyRequestResponse?> getMyRequest() async {
    var headers = {
      'Accept': 'application/json',
      'vbtauthorization': token,
    };

    var params = {
      'statuArray': '-1',
    };
    var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

    var url =
        'https://suniktest.suntekstil.com.tr/mobileapi/api/RequestManagement/GetMyRequestMasterMobile?$query';
    var res = await post(url, "", headers: headers);
    if (res.statusCode != 200)
      throw Exception('http.post error: statusCode= ${res.statusCode}');
    print(res.body);
    return MyRequestResponse.fromJson(res.body);
  }
  ////////////////////MyJobs Service////////////////////

  Future<MyWorksResponse?> getMyWorks() async {
    var headers = {
      'Accept': 'application/json',
      'vbtauthorization': token,
    };

    var params = {
      'ID_WORK_STATUS_ARRAY': '1',
    };
    var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

    var url =
        'https://suniktest.suntekstil.com.tr/mobileapi/api/RequestManagement/GetPendingJobs?$query';
    var res = await post(url, "", headers: headers);
    if (res.statusCode != 200) {
      throw Exception('http.post error: statusCode= ${res.statusCode}');
    }
    print(res.body);
    return MyWorksResponse.fromJson(res.body);
  }

  Future<NotificationResponse> getNotifications() async {
    var headers = {
      'Accept': 'application/json',
      'vbtauthorization': token,
    };

    var url =
        'https://suniktest.suntekstil.com.tr/mobileapi/api/PushNotification/GetPushMessages';
    var res = await post(url, "", headers: headers);
    if (res.statusCode != 200) {
      throw Exception('http.post error: statusCode= ${res.statusCode}');
    }
    print(res.body);
    return NotificationResponse.fromJson(res.body);
  }

  Future<FirmsResponse> getFirms() async {
    var headers = {
      'Accept': 'application/json',
    };

    var url =
        'https://suniktest.suntekstil.com.tr/mobileapi/api/Account/GetAllDomainFirms';
    var res = await get(url, headers: headers);
    if (res.statusCode != 200)
      throw Exception('http.get error: statusCode= ${res.statusCode}');
    print(res.body);
    return FirmsResponse.fromJson(res.body.first);
  }

  Future<AccountResponse> getAccount(
    String email,
    String password,
    int id,
  ) async {
    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    var data = {
      "SelectedIdLanguage": 0,
      "Email": email,
      "Password": password,
      "FirmId": id,
      "PinCode": "string",
      "DeviceID": "string",
      "DomainFirmId": 0
    };

    var url = 'https://suniktest.suntekstil.com.tr/mobileapi/api/Account/Token';
    var res = await post(url, data, headers: headers);
    if (res.statusCode != 200)
      throw Exception('http.post error: statusCode= ${res.statusCode}');
    print(res.body);
    return AccountResponse.fromJson(res.body);
  }
}
