//Constant---
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DashboardConstant {
  static const Color mainColor = Color(0xff567DF4);
  static Color whiteC = const Color(0xff567DF4).withOpacity(0.7);
  final decExpand = BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(3.125.h),
          topRight: Radius.circular(3.125.h)),
      color: const Color(0xffEEF0FC));
  final decType = BoxDecoration(
      gradient: LinearGradient(
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
    "assets/deadline.png",
    "assets/stamp.png",
    "assets/deadline.png",
    "assets/stamp.png",
    "assets/stamp.png",
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

class LoginConstant {
  final kullaniciGirisTitle = GoogleFonts.poppins(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: const Color(0xff567DF4),
  );
  final textFieldText =
      GoogleFonts.poppins(fontSize: 14.5.sp, color: Colors.grey);

  final buttonStyle = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xFF011582),
      boxShadow: const [
        BoxShadow(
          color: Color(0xFFE8E8E8),
          blurRadius: 25,
          offset: Offset(0, 10),
        )
      ]);
  final girisText = GoogleFonts.poppins(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
  );
  final dilText = GoogleFonts.poppins(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
  );

  final textFieldShadow = const BoxShadow(
    color: Color(0Xffe8e8e8),
    blurRadius: 25,
    offset: Offset(0, 5),
  );
}

class BordroDetailConstant {
  static const Color mainColor = Color(0xff567DF4);
  static const Color generalColor = Color(0xffF6F6F7);
  static const Color whiteC = Colors.white;

  final appBarText = GoogleFonts.poppins(color: Colors.white, fontSize: 18.sp);

  final salarytext1 =
      GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16.sp);
  final salarytext2 = GoogleFonts.poppins(fontSize: 16.sp);
  final generalContainer = const BoxDecoration(
      //color: Color(0xffF6F6F7),
      color: BordroDetailConstant.generalColor,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(40.0),
        topLeft: Radius.circular(40.0),
      ));

  final insideCotainer = BoxDecoration(
      color: BordroDetailConstant.whiteC,
      //color: Colors.red,

      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.grey.shade300, width: 0.5.w));

  final downloadContainer = BoxDecoration(
    color: BordroDetailConstant.mainColor,
    borderRadius:
        // BorderRadius.circular(40)
        BorderRadius.circular(7),
  );
}
