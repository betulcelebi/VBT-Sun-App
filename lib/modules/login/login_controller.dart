import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class LoginController extends GetxController {
  TextEditingController kullaniciAdi = TextEditingController();
  TextEditingController sifre = TextEditingController();
  String selectedOption = "Şirket Seçin";
  bool isSmsSelected = false;
  bool passwordInVisible = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
//Xmodel? x ;
  onloginPressed() {
    if (formKey.currentState!.validate()) {
      //Response x = Service.login();
      //if (x.response == 200) // başarılı istektir
      //{
      // burda modele de yazabilirsin
      //Xmodel a = Xmodel.fromJson(response.data); şeklinde
      // ozaman yönlendirme yapabilirsin
      //}
      Get.toNamed(Routes.DASHBOARD);
      Get.snackbar("Mesaj", "Başarıyla giriş yaptınız",
          snackPosition: SnackPosition.BOTTOM,
          colorText: Color(0xff567DF4),
          snackStyle: SnackStyle.FLOATING,
          backgroundColor: Colors.white.withOpacity(0.4));
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
              )),
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
              )),
        );
      }
    }
  }
}
