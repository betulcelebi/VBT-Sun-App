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
      Get.snackbar("Başarılı", "Başarıyla giriş yaptınız",
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Color(0xff567DF4).withOpacity(0.7));
    } else {
      if (kullaniciAdi.text.isEmpty && sifre.text.isEmpty) {
        Get.defaultDialog(
            title: "uyarı", middleText: "Kullanıcı adı ve şifre boş gecilemez");
      } else if (kullaniciAdi.text.isEmpty) {
        Get.defaultDialog(
            title: "uyarı", middleText: "Kullanıcı adı boş gecilemez");
      } else if (sifre.text.isEmpty) {
        Get.defaultDialog(
            title: "uyarı", middleText: "şifre alanı boş gecilemez");
      } else if (sifre.text.length < 8) {
        Get.defaultDialog(
            title: "uyarı", middleText: "Şifre 8 karakterden küçük olamaz");
      }
    }
  }
}
