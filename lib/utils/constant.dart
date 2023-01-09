//Constant---

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
