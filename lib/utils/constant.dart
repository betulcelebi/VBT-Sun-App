//Constant---

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginConstant {
  final kullaniciGirisTitle = GoogleFonts.poppins(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: Color(0xff567DF4),
  );
  final textFieldText =
      GoogleFonts.poppins(fontSize: 14.5.sp, color: Colors.grey.withOpacity(0.6));

  final buttonStyle = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color(0xff567DF4).withOpacity(0.8),
    boxShadow: [
      BoxShadow(
         color: Colors.grey.withOpacity(0.4),
    blurRadius: 25,
    offset: Offset(0,10),
      )
    ]
  );
  final girisText = GoogleFonts.poppins(
      color: Colors.white, fontWeight: FontWeight.w600, fontSize:  16.sp,);
       final dilText = GoogleFonts.poppins(
      color: Colors.white, fontWeight: FontWeight.w600, fontSize:  16.sp,);

  final textFieldShadow =  BoxShadow(
    color:Colors.grey.withOpacity(0.4),
    blurRadius: 25,
    offset: Offset(0, 5),
  );
}
