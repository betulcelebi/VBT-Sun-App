import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/login/login_controller.dart';
import 'package:vbt_sun_app_project/shared/services/login_service.dart';

import '../../utils/colors.dart';
import '../../utils/constant.dart';

class LoginScreen extends GetView<LoginController> {
   LoginScreen({super.key});
  //Services servis=Services();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/background.svg",
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
         
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 2.h, bottom: 12.h, right: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3,right:5),
                            child: Container(
                              width: 2,
                              height: 2.h,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "TR",
                            style: LoginConstant().dilText,
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 6.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(16),
                                    ),
                                    border: Border.all(
                                        color: const Color(0xFFE8E8E8)),
                                    boxShadow: kElevationToShadow[3],
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 8.h, left: 20, right: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "SMS ile şifre almak istiyorum",
                                              style: GoogleFonts.poppins(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey.shade700,
                                              ),
                                            ),
                                            GetBuilder<LoginController>(
                                                builder: (controller) {
                                              return Switch.adaptive(
                                                activeColor:
                                                    const Color(0xFF011582),
                                                value: controller.isSmsSelected,
                                                onChanged: (value) {
                                                  controller.isSmsSelected =
                                                      value;
                                                  controller.update();
                                                },
                                              );
                                            })
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 15, right: 15, top: 1.5.h),
                                        child: GetBuilder<LoginController>(
                                            builder: (controller) {
                                          return Container(
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  LoginConstant()
                                                      .textFieldShadow,
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                border: Border.all(
                                                    color: const Color(
                                                        0xFFE8E8E8))),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child:
                                                DropdownButtonFormField<String>(
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10,
                                                        horizontal: 10),
                                                filled: true,
                                                fillColor: Colors.white,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  borderSide: const BorderSide(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  borderSide: const BorderSide(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              value: controller.selectedOption,
                                              items: [
                                                'Sun',
                                                'Şirket Seçin'
                                              ].map<DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(
                                                    value,
                                                    style: LoginConstant()
                                                        .textFieldText,
                                                  ),
                                                );
                                              }).toList(),
                                              onChanged: (String? newValue) {
                                                controller.selectedOption =
                                                    newValue.toString();
                                              },
                                            ),
                                          );
                                        }),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 15, right: 15),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                LoginConstant().textFieldShadow,
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                  color:
                                                      const Color(0xFFE8E8E8))),
                                          child: TextFormField(
                                         
                                            decoration: InputDecoration(
                                              suffixIcon:
                                                  const Icon(Icons.person),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 10,
                                                horizontal: 10,
                                              ),
                                              filled: true,
                                              fillColor: Colors.white,
                                              hintText: "Kullanıcı Adı",
                                              hintStyle:
                                                  LoginConstant().textFieldText,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: const BorderSide(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
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
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 15, right: 15),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                LoginConstant().textFieldShadow,
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                  color:
                                                      const Color(0xFFE8E8E8))),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                                suffixIcon: const Icon(Icons
                                                    .remove_red_eye_rounded),
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10,
                                                        horizontal: 10),
                                                filled: true,
                                                fillColor: Colors.white,
                                                hintText: "Şifre",
                                                hintStyle: LoginConstant()
                                                    .textFieldText,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  borderSide: const BorderSide(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  borderSide: const BorderSide(
                                                    color: Colors.white,
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 3.h),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, right: 15,),
                                        child: GestureDetector(
                                          onTap:()  {
                                           // controller.services.getToken();

                                          },
                                          child: Container(
                                            height: 45,
                                            decoration:
                                                LoginConstant().buttonStyle,
                                            child: Center(
                                              child: Text(
                                                "Giriş Yap",
                                                style: LoginConstant().girisText,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20, right: 20, bottom: 12),
                                          child: Text(
                                            "TEST v1.1.3",
                                            style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                color: Color(0xFF011582),
                                                fontSize: 12.5,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Container(
                            alignment: Alignment.center,
                            width: 14.h,
                            height: 14.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.25.h),
                              color: Colors.white,
                              border: Border.all(
                                color: const Color(0xFFE8E8E8),
                                width: 2,
                              ),
                              boxShadow: kElevationToShadow[5],
                            ),
                            child: Image.asset(
                              "assets/sun_logo.png",
                              color: const Color(0xFF011689),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


