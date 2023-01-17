import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TeamDetail extends StatelessWidget {
  const TeamDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff567DF4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70.w,
            height: 13.h,
            //color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.arrow_back,size: 3.h,color: Colors.white,),
                Image.asset("assets/sun_logo.png",)
              ],
            ),
          ),
          Container(
          decoration:  BoxDecoration(
      //color: Color(0xffF6F6F7),
      color: Color(0xffF6F6F7),
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(40.0),
        topLeft: Radius.circular(40.0),
      )),
            height: 85.h,
            width: double.infinity,
           child: Padding(
             padding:  EdgeInsets.only(top:6.h,right: 3.0.h,left: 3.0.h),
             child: Column(
               children: [
                 Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                   width: 85.w,
                   height: 13.h,
                   
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding:  EdgeInsets.only(left:8.0.h,top:2.h),
                             child: Text("CEREN KURU",style: GoogleFonts.poppins( fontSize: 16.sp)
,),
                           ),
                           Icon(Icons.arrow_drop_up,size: 4.h,color: Colors.grey.shade100,)
                         ],
                       ),
                       Padding(
                         padding:  EdgeInsets.only(left:8.0.h,),
                         child: Text("VBT",style: GoogleFonts.poppins( fontSize: 16.sp)),
                       ),
                       Padding(
                         padding:  EdgeInsets.only(top:1.0.h,),
                         child: Container(
                          width: 85.w,
                          height: 0.2.h,
                          color: Colors.yellow,
                         ),
                       ),
                       Padding(
                          padding:  EdgeInsets.only(left:2.0.h,top:1.h),
                         child: Text("ŞİRKET BİLGİSİ",style: GoogleFonts.poppins( fontSize: 16.sp)),
                       ),
                     ],
                   ),
                 )
               ],
             ),
           ),
          )
          
        ],
      )
    );
  }
}