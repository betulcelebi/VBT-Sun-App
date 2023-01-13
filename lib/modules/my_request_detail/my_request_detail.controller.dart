import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/my_request_detail/my_request_detail_screen.dart';

class MyRequestDetail extends GetView<MyRequestDetailController> {
  const MyRequestDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff567DF4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 10.h,
              //color: Colors.red,
              child: Row(
                
                children: [
                  Padding(
                    padding:EdgeInsets.only(left:2.0.h),
                    child: Icon(Icons.arrow_back,size: 4.h, color: Colors.white),
                  ),
                  Padding(
                    padding:EdgeInsets.only(left:12.0.h),
                    child: Text("Taleplerim",style: GoogleFonts.poppins(
                             textStyle:
                                 TextStyle(fontSize: 18.sp, color: Colors.white)),),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 90.h,
               decoration: const BoxDecoration(
                  color: Color(0xffF6F6F7),

                  //color: Color(0xffF6F6F7),

                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                  )),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left:2.0.h,right: 2.h,top:5.h),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          
                          width: 90.w,
                          height: 20.h,
                          
                          child: Row(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left:1.0.h),
                                child: Container(
                                  width: 2.w,
                                  height: 18.h,
                                  color: Color(0xff567DF4),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left:2.0.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    
                                    
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                      
                                      Text("İzin talebi",style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        fontSize: 16.sp,
                                                        color: Colors
                                                            .grey.shade400)),),
                                      Padding(
                                        padding:  EdgeInsets.only(left:25.0.h,top:1.h),
                                        child: Icon(Icons.file_copy,size: 4.h,color: Color(0xff567DF4),),
                                      ),
                                      
                                    ],),
                                    Text("13.01.2022  12:12",style: GoogleFonts.poppins(
                                                textStyle:
                                                    TextStyle(fontSize: 18.sp)),),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        
                                        Row(
                                          //mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text("Talep Eden : ",style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 16.sp,
                                                            color: Colors
                                                                .grey.shade400)),),
                                            Padding(
                                              padding:  EdgeInsets.only(left:5.0.h),
                                              child: Text("Uğur İsmail Uçar",style: GoogleFonts.poppins(
                                                    textStyle:
                                                        TextStyle(fontSize: 18.sp)),),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),

                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("Atanan Kişi : ",style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        fontSize: 16.sp,
                                                        color: Colors
                                                            .grey.shade400)),),
                                        Padding(
                                          padding:  EdgeInsets.only(left:5.0.h),
                                          child: Text("Bülent yönter",style: GoogleFonts.poppins(
                                                textStyle:
                                                    TextStyle(fontSize: 18.sp)),),
                                        )
                                      ],
                                    )
                                    
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top:1.0.h),
                        child: Container(
                          
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                          width: 90.w,
                          height: 45.h,
                          
                          child: MediaQuery.removePadding(
                            context: context,
                            removeTop: true,
                            child: ListView.builder(itemCount: 18,
                            scrollDirection: Axis.vertical,itemBuilder: (context, index) {
                              return Padding(
                                padding:  EdgeInsets.only(left:1.0.h,right: 1.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                     Text("Talep no",style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          fontSize: 15.sp,
                                                          color: Colors
                                                              .grey.shade400)),),
                                     Text("598",style: GoogleFonts.poppins(
                                                        textStyle:
                                                            TextStyle(fontSize: 15.sp)),)
                                  ],
                                ),
                              );
                            },),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding:  EdgeInsets.only(top:1.0.h),
                      //   child: Container(
                      //     width: 90.w,
                      //     height: 5.h,
                      //     color:  Color(0xffF6F6F7),
                      //     child: Padding(
                      //       padding:  EdgeInsets.all(1.0.h),
                      //       child: Text("Tarihçe",style: GoogleFonts.poppins(
                      //                                 textStyle: TextStyle(
                      //                                     fontSize: 16.sp,
                      //                                     color:  Colors.white)),),
                      //     ),
                      //   ),
                        
                      // ),
                      Padding(
                        padding:  EdgeInsets.only(top:1.0.h),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                          width: 90.w,
                          height: 15.h,
                          
                          child: Row(
                            children: [
Padding(
  padding:  EdgeInsets.only(left:1.0.h),
  child:   Container(
  
    width: 2.w,
  
    height: 14.h,
  
    color: Color(0xff567DF4),
  
  ),
),
                              Padding(
                                padding:  EdgeInsets.only(left:1.0.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //Text("tarihçe"),
                                    Row(
//mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
Text("13.01.2022  12:12",style: GoogleFonts.poppins(
                                                              textStyle: TextStyle(
                                                                  fontSize: 16.sp,
                                                                  color: Colors
                                                                      .grey.shade400)),),
        Padding(
          padding:  EdgeInsets.only(left:1.0.h),
          child: Text("Talep başlamıştır",style: GoogleFonts.poppins(
                                                                textStyle: TextStyle(
                                                                    fontSize: 16.sp,
                                                                    color: Colors
                                                                        .grey.shade400)),),
        ),
        Padding(
          padding:  EdgeInsets.only(left:1.0.h),
          child: Icon(Icons.date_range,color: Color(0xff567DF4),size: 4.h,),
        ),
                                      ],
                                    ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Uğur İsmail Uçar ",style: GoogleFonts.poppins(
                                                            textStyle:
                                                                TextStyle(fontSize: 18.sp)),),
            Padding(
              padding:  EdgeInsets.only(left:1.0.h),
              child: Text("Talep başlamıştır",style: GoogleFonts.poppins(
                                                              textStyle:
                                                                  TextStyle(fontSize: 18.sp)),),
            ),
          ],
        ),
        Text("Mali İşler Arşiv Personeli",style: GoogleFonts.poppins(
                                                            textStyle:
                                                                TextStyle(fontSize: 16.sp)),)
                                  ],
                                ),
                              ),
                            ],
                          )
                        ),
                      )
                    ],
                  ),
                  
            ),
            
          ],
        ),
      ),
    );
  }
}