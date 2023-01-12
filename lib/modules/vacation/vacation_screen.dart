import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/vacation/vacation_controller.dart';

class Vacation extends GetView<VacationController> {
  
  //const
   Vacation({super.key});
List<String>firsttile=[
  "İdari izin",
  "İdari izin2"
];
List<String>date=[
  "09.02.2022",
  "01.02.2022"
];

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff567DF4),
      body: SingleChildScrollView(
        
        child: Padding(
          padding:  EdgeInsets.only(top:15.0.h),
          child: Container(
             decoration: BoxDecoration(
              color: Color(0xffF6F6F7),
        borderRadius: BorderRadius.only(
        topRight: Radius.circular(40.0),
        
        topLeft: Radius.circular(40.0),
        
        ),
      ),
            width:double.infinity,
            height: 90.h,
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top:8.0.h),
                  child: Container(
                    decoration: BoxDecoration(
                      
                      color: Colors.white,
                      border: Border.all(
                        width: 0.45.w,
                         color: Colors.grey.shade300,
                      )
                    ),
                    width: 90.w,
                    height: 5.h,
                    
                    child: Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left:2.0.h),
                          child: Container(
                            decoration: BoxDecoration(
                               color: Color(0xff48D380),
                               borderRadius: BorderRadius.circular(15)
                            ),
                            width: 7.w,
                            height: 3.5.h,
                            child:Icon(Icons.check,color: Colors.white,)
                            
                          ),
                          
                        ),
                  
                        Padding(
                          padding:  EdgeInsets.only(left:2.0.h),
                          child: Text("İzin hak ediş tarihi : ",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16.sp,color: Color(0xff48D380),)),),
                        ),
                          Text(" 08.01.2024",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16.sp,color: Color(0xff567DF4),)),),
                  
                      ],
                    ),
                  ),
                  
                ),
                
                Padding(
                  padding:  EdgeInsets.only(top:0.1.h),
                  child: Container(
                     decoration: BoxDecoration(
                        
                        color: Colors.white,
                        border: Border(
            
            right: BorderSide(width: 0.45.w, color: Colors.grey.shade300,),
            left: BorderSide(width: 0.45.w, color: Colors.grey.shade300,),
            bottom: BorderSide(width: 0.45.w, color: Colors.grey.shade300,),
          ),
                      ),
                    width: 90.w,
                    height: 10.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left:2.0.h,top:1.h),
                          child: Row(
                            children: [
                              Text(" İzin hak ediş gün sayısı      : ",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15.sp,color: Colors.black,)),),
                              Text("      26.0 Gün",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15.sp,color: Color(0xff567DF4),)),),
                              
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left:2.0.h,top:1.h),
                          child: Row(
                            children: [
                              Text(" İzin bakiyesi                          : ",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15.sp,color: Colors.black,)),),
                          Text("      0.0 Gün",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15.sp,color: Color(0xff567DF4),)),),
                              
                            ],
                          ),
                        ),

                        
                        
                      
                        
                      ],
                    ),
                    
                  ),
                ),
                Container(
                  width: 90.w,
                  height: 65.h,
                  color: Colors.white,
                  child: ListView.builder(itemCount:firsttile.length,
                  scrollDirection: Axis.vertical,itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.only(left:3.0.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(firsttile[index]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(right:1.0.h),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff48D380),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                width: 18.w,
                                height: 5.h,
                                
                            ),
                              )],
                          ),
                          Text(date[index]),
                          
                        ],
                        
                      ),
                    );
                   
                  },),
                ),
              ],
            ),
            
          ),
        ),
      ),
    );
  }
}