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
      backgroundColor: const Color(0xff567DF4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 1.5.h,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 1.875.h, vertical: 1.875.h),
            child: Stack(
              children: [
                Container(
                  width: 43.75.h,
                  height: 14.h,
                  color: const Color(0xff567DF4),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Container(
                            width: 2,
                            height: 2.h,
                            color: Colors.white,
                          ),
                        ),
                        
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "TR",
                          style: LoginConstant().dilText,
                        ),
                      ],
                    ),
                  ),
                ),
             
               
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.125.h),
                      topRight: Radius.circular(4.125.h)),
                  color: const Color(0xffEEF0FC)),
              child: Column(
                children: [
                  SizedBox(
                    height: 6.h,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 12.h,
                    height: 12.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.25.h),
                        color: Color(0xff567DF4).withOpacity(0.8)),
                    child: Image.asset(
                      "assets/sun_logo.png",
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 15),
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("SMS ile şifre almak istiyorum",
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade700)),
                          Switch(
                            activeColor: Color(0xff567DF4),
                            value: true,
                            onChanged: (value) {},
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.5.h,
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
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
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
                              child: Text(value,
                                  style: LoginConstant().textFieldText),
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
                    padding:
                        const EdgeInsets.only(top: 20, left: 15, right: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          LoginConstant().textFieldShadow,
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.person),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Kullanıcı Adı",
                          hintStyle: LoginConstant().textFieldText,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
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
                    padding:
                        const EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          LoginConstant().textFieldShadow,
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye_rounded),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Şifre",
                            hintStyle: LoginConstant().textFieldText,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
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
                      height: 45,
                      decoration: LoginConstant().buttonStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 290),
                    child: Text(
                      "TEST v1.1.3",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color(0xff567DF4),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
