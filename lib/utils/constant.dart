//Constant---
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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