//Login Service---

import 'package:get/get.dart';

class Services extends GetConnect{
  String baseURL = "https://suniktest.suntekstil.com.tr/mobileapi";
    Future<Response> getToken(Map data) => post("$baseURL/api/Account/Token",  data);

}