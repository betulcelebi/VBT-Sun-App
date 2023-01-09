//Constant---

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DashboardConstant {
  static const Color mainColor = Color(0xff567DF4);
  static  Color whiteC = Color(0xff567DF4).withOpacity(0.7);
  final decExpand = BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(3.125.h),
          topRight: Radius.circular(3.125.h)),
      color: const Color(0xffEEF0FC));
  final decType = BoxDecoration(
      gradient:  LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            DashboardConstant.mainColor,
            DashboardConstant.whiteC,
          ]),
      borderRadius: BorderRadius.circular(1.25.h));
  final miniDec = BoxDecoration(
      borderRadius: BorderRadius.circular(1.25.h), color: Colors.white70);

  List<String> gimagePath = [
    "assets/profile.png",
    "assets/code.png",
    "assets/stamp.png",
    "assets/deadline.png"
  ];
  List<String> limagePath = [
    "assets/turkish.png",
    "assets/permision.png",
  ];
  List<String> gridTitle = ["Profilim", "Taleplerim", "Onaylarım", "İşlerim"];
  List<String> listTitle = ["Bordrolarım", "İzinlerim"];
  final gridText = GoogleFonts.poppins(
      color: Colors.white, fontSize: 1.8.h, fontWeight: FontWeight.w600);
}
