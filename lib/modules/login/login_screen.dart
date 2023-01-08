import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/login/login_controller.dart';

import '../../utils/constant.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/login_top.png"),
                Positioned(
                  top: 58,
                  right: 120,
                  child: Image.asset(
                    "assets/sun_logo.png",
                    width: 130,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              "Kullanıcı Girişi",
              style: LoginConstant().kullaniciGirisTitle,
            ),
            SizedBox(
              height: 4.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: GetBuilder<LoginController>(builder: (controller) {
                return Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      LoginConstant().textFieldShadow,
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    value: controller.selectedOption,
                    items: ['Sun', 'Şirket Seçin']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child:
                            Text(value, style: LoginConstant().textFieldText),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      controller.selectedOption = newValue.toString();
                    },
                  ),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    LoginConstant().textFieldShadow,
                  ],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Kullanıcı Adı",
                    hintStyle: LoginConstant().textFieldText,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    LoginConstant().textFieldShadow,
                  ],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Şifre",
                      hintStyle: LoginConstant().textFieldText,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            ),
            SizedBox(height: 3.h),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                // ignore: sort_child_properties_last
                child: Center(
                  child: Text(
                    "Giriş",
                    style: LoginConstant().girisText,
                  ),
                ),
                height: 55,
                decoration: LoginConstant().buttonStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
