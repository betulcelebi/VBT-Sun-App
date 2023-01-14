import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:vbt_sun_app_project/init/cache_manager.dart';
import 'package:vbt_sun_app_project/main.dart';

import '../../models/firms_model.dart';
import '../../models/login_model.dart';
import '../../routes/app_pages.dart';
import '../../shared/services/services.dart';

class LoginController extends GetxController {
  TextEditingController kullaniciAdi = TextEditingController();
  TextEditingController sifre = TextEditingController();
  String selectedOption = "Şirket Seçin";
  bool isSmsSelected = false;
  bool passwordInVisible = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  FirmsResponse? firms;
  Services servis = Services();

  @override
  void onInit() {
    super.onInit();
    askStoragePermission();
    getFirms();
    isLoginScreen = true;
  }

  @override
  void onClose() {
    super.onClose();
    isLoginScreen = false;
  }

  getFirms() async {
    firms = await servis.getFirms();
    update();
  }

  askStoragePermission() async {
    await Permission.storage.request();
  }

  onloginPressed() async {
    if (formKey.currentState!.validate()) {
      if (selectedOption == "Şirket Seçin") {
        Get.snackbar(
          "Mesaj",
          "Lütfen şirket seçiniz",
          snackPosition: SnackPosition.BOTTOM,
          colorText: Color(0xff567DF4),
          snackStyle: SnackStyle.FLOATING,
          backgroundColor: Colors.white,
        );
      } else {
        try {
          AccountResponse account = await servis.getAccount(
              kullaniciAdi.text, sifre.text, firms?.idFirms ?? 5);
          if (account.token != null) {
            if (account.token!.isNotEmpty) {
              CacheManager.instance.setValue("token", account.token);
              CacheManager.instance.setValue("isManager", account.isManager);
              Get.offNamed(Routes.DASHBOARD);
              Get.snackbar(
                "Mesaj",
                "Başarıyla giriş yaptınız",
                snackPosition: SnackPosition.BOTTOM,
                colorText: Color(0xff567DF4),
                snackStyle: SnackStyle.FLOATING,
                backgroundColor: Colors.white.withOpacity(0.4),
              );
            }
          }
        } catch (e) {
          Get.snackbar(
            "Mesaj",
            "Kullanıcı adı veya şifreniz hatalı.",
            snackPosition: SnackPosition.BOTTOM,
            colorText: Color(0xff567DF4),
            snackStyle: SnackStyle.FLOATING,
            backgroundColor: Colors.white,
          );
        }
      }
    } else {
      if (kullaniciAdi.text.isEmpty && sifre.text.isEmpty) {
        Get.defaultDialog(
          title: "Uyarı",
          titleStyle: const TextStyle(color: Color(0xff567DF4)),
          middleText: "Kullanıcı adı ve şifre boş gecilemez",
          confirm: TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text(
              "Tamam",
              style: TextStyle(color: Color(0xff567DF4)),
            ),
          ),
        );
      } else if (kullaniciAdi.text.isEmpty) {
        Get.defaultDialog(
          title: "Uyarı",
          titleStyle: const TextStyle(color: Color(0xff567DF4)),
          middleText: "Kullanıcı adı boş gecilemez",
          confirm: TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                "Tamam",
                style: TextStyle(color: Color(0xff567DF4)),
              )),
        );
      } else if (sifre.text.isEmpty) {
        Get.defaultDialog(
          title: "Uyarı",
          titleStyle: const TextStyle(color: Color(0xff567DF4)),
          middleText: "şifre alanı boş gecilemez",
          confirm: TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                "Tamam",
                style: TextStyle(color: Color(0xff567DF4)),
              )),
        );
      } else if (sifre.text.length < 8) {
        Get.defaultDialog(
          title: "Uyarı",
          titleStyle: const TextStyle(color: Color(0xff567DF4)),
          middleText: "Şifre 8 karakterden küçük olamaz",
          confirm: TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text(
              "Tamam",
              style: TextStyle(color: Color(0xff567DF4)),
            ),
          ),
        );
      }
    }
  }
}
