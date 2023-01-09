import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vbt_sun_app_project/models/token_model.dart';

import '../../shared/services/login_service.dart';

class LoginController extends GetxController {
  String selectedOption = "Şirket Seçin";
  bool isSmsSelected = false;

  TextEditingController usernameController = TextEditingController();
  
  TokenModel? tokenModel;
  login() async {
    Response x = await Services().getToken(
      {
        "SelectedIdLanguage": 0,
        "Email": "user",
        "Password": usernameController.text,
        "FirmId": 5,
        "PinCode": "string",
        "DeviceID": "string",
        "DomainFirmId": 0
      },
    );
    tokenModel = TokenModel.fromJson(x.body);
    update();
    print(tokenModel);
  }
}
