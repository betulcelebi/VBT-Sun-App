import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/login/login_controller.dart';

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
                    top: 48,
                    right: 120,
                    child: Image.asset(
                      "assets/sun_logo.png",
                      width: 130,
                      color: Colors.white,
                    )),
              ],
            ),

            Text(
              "Kullanıcı Girişi",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff3B48B0)),
            ),
            SizedBox(
              height: 4.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: GetBuilder<LoginController>(builder: (controller) {
                return Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 25,
                        offset: Offset(0, 10)),
                  ]),
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
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.grey[700]),
                        ),
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
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 25,
                      offset: Offset(0, 10)),
                ]),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Kullanıcı Adı",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
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
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 25,
                      offset: Offset(0, 10)),
                ]),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Şifre",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
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
                child: const Center(
                  child: Text(
                    "Giriş",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff3B48B0),
                ),
              ),
            ),
            const SizedBox(
              height: 118,
            ),
            //Image.asset("assets/wave.png")
          ],
        ),
      ),
    );
  }
}
