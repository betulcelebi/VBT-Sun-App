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

class BordroDetailConstant{
  static const  Color mainColor =  Color(0xff567DF4);
  static const  Color generalColor = Color(0xffF6F6F7);
  static const  Color whiteC = Colors.white;

  final appBarText = GoogleFonts.poppins(
color: Colors.white, fontSize: 18.sp
  );

  final salarytext1 =GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 16.sp);
  final salarytext2= GoogleFonts.poppins(fontSize: 16.sp);
  final generalContainer = BoxDecoration(
                      //color: Color(0xffF6F6F7),
                      color:BordroDetailConstant.generalColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      ));

 final insideCotainer =  BoxDecoration(
   
                             
                                  color: BordroDetailConstant.whiteC,
                                  //color: Colors.red,

                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Colors.grey.shade300,
                                      width: 0.5.w)); 

   final downloadContainer  =   BoxDecoration(
                                                color: BordroDetailConstant.mainColor,
                                                borderRadius:
                                                   // BorderRadius.circular(40)
                                                    BorderRadius.circular(7),
                                                    );                                              
}
