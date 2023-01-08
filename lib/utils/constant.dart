//Constant---

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginConstant {
  final kullaniciGirisTitle = GoogleFonts.poppins(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: const Color(0xff3B48B0),
  );
  final textFieldText =
      GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600]);

  final buttonStyle = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: const Color(0xff3B48B0),
  );
  final girisText = GoogleFonts.poppins(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 26);

  final textFieldShadow = const BoxShadow(
    color: Colors.grey,
    blurRadius: 25,
    offset: Offset(0, 10),
  );
}
