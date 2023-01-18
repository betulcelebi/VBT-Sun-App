import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/teamdetail/teamdetail_controller.dart';

class TeamDetail extends GetView<TeamDetailController> {
  const TeamDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/sun_logo.png",width: 25.w,height: 10.h,),
        titleSpacing: 00.0,
         leading: IconButton(
          icon:  Icon(Icons.arrow_back,color: Colors.white,size: 3.h,),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        //backgroundColor: Colors.greenAccent[400],
        backgroundColor: const Color(0xff567DF4),
      ), //AppBar
      backgroundColor: const Color(0xff567DF4),
      body: SingleChildScrollView(
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   width: 70.w,
          //   height: 13.h,
          //   //color: Colors.grey,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: [
          //       Icon(Icons.arrow_back,size: 3.h,color: Colors.white,),
          //       Image.asset("assets/sun_logo.png",)
          //     ],
          //   ),
          // ),
          Container(
          decoration:  BoxDecoration(
      //color: Color(0xffF6F6F7),
      color: Color(0xffF6F6F7),
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(40.0),
        topLeft: Radius.circular(40.0),
      )),
            height: 190.h,
            width: double.infinity,
           child: Padding(
             padding:  EdgeInsets.only(top:6.h,right: 3.0.h,left: 3.0.h),
             child: Column(
               children: [
                 Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
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
                           Icon(Icons.arrow_drop_up,size: 4.h,color: Color(0xffF6F6F7),)
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
                          color: Color(0xffF6F6F7),
                         ),
                       ),
                       Padding(
                          padding:  EdgeInsets.only(left:2.0.h,top:1.h),
                         child: Text("ŞİRKET BİLGİSİ",style: GoogleFonts.poppins( fontSize: 16.sp)),
                       ),
                       
                     ],
                   ),
                 ),
                 Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Sun",style: GoogleFonts.poppins( fontSize: 16.sp)),
                  )),

                   Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                   width: 85.w,
                   height: 5.h,
                   
                   child: Padding(
                     padding:  EdgeInsets.all(1.0.h),
                     child: Text("Organizsyon Bilgisi",style: GoogleFonts.poppins( fontSize: 16.sp)),
                   ),
                   ),
                   Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("SUN-SUN GRUP-GRUP MÜDÜRLÜKLERİ-GRUP MALİ İŞLER MÜDÜRLÜĞÜ",style: GoogleFonts.poppins( fontSize: 16.sp)),
                  )),
                  Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                   color: Colors.white,
                  ),
                   width: 85.w,
                   height: 5.h,
                   
                   child: Padding(
                     padding:  EdgeInsets.all(1.0.h),
                     child: Text("Pozisyon",style: GoogleFonts.poppins( fontSize: 16.sp)),
                   ),
                   ),
                    Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("STAJYER(ÜNİVERSİTE)",style: GoogleFonts.poppins( fontSize: 16.sp)),
                  )),
                Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                   width: 85.w,
                   height: 5.h,
                   
                   child: Padding(
                     padding:  EdgeInsets.all(1.0.h),
                     child: Text("Şirket Giriş Tarihi",style: GoogleFonts.poppins( fontSize: 16.sp)),
                   ),
                   ),
                   Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("18.07.2022",style: GoogleFonts.poppins( fontSize: 16.sp)),
                  )),
                  Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                   width: 85.w,
                   height: 5.h,
                   
                   child: Padding(
                     padding:  EdgeInsets.all(1.0.h),
                     child: Text("VBT/GRUP/ŞİRKET/Son Pozisyon Kıdemi",style: GoogleFonts.poppins( fontSize: 16.sp)),
                   ),
                   ),
                    Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("0.50/0.0/0.50/0.50",style: GoogleFonts.poppins( fontSize: 16.sp)),
                  )),
                   Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                   width: 85.w,
                   height: 5.h,
                   
                   child: Padding(
                     padding:  EdgeInsets.all(1.0.h),
                     child: Text("Toplam/VBT Dışı İş Deneyimi",style: GoogleFonts.poppins( fontSize: 16.sp)),
                   ),
                   ),
                   Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("0.50/0.0",style: GoogleFonts.poppins( fontSize: 16.sp)),
                  )),
                   Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                   color: Colors.white,
                  ),
                   width: 85.w,
                   height: 5.h,
                   
                   child: Padding(
                     padding:  EdgeInsets.all(1.0.h),
                     child: Text("Çalıştığı İl",style: GoogleFonts.poppins( fontSize: 16.sp)),
                   ),
                   ),
                   Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("35-İzmir",style: GoogleFonts.poppins( fontSize: 16.sp)),
                  )),
                   Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                   width: 85.w,
                   height: 5.h,
                   
                   child: Padding(
                     padding:  EdgeInsets.all(1.0.h),
                     child: Text("Doğum Tarihi",style: GoogleFonts.poppins( fontSize: 16.sp)),
                   ),
                   ),
                    Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("null",style: GoogleFonts.poppins( fontSize: 16.sp)),
                  )),
                   Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                   width: 85.w,
                   height: 5.h,
                   
                   child: Padding(
                     padding:  EdgeInsets.all(1.0.h),
                     child: Text("Doğum Yeri",style: GoogleFonts.poppins( fontSize: 16.sp)),
                   ),
                   ),
                    Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("null",style: GoogleFonts.poppins( fontSize: 16.sp)),
                  )),
                  Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                   width: 85.w,
                   height: 13.h,
                   
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding:  EdgeInsets.only(left:2.0.h,top:2.h),
                             child: Icon(Icons.contact_phone,size: 3.h,)
                           ),
                           Padding(
                             padding:  EdgeInsets.only(left:2.0.h,top:2.h),
                             child: Text("İletişim Bilgileri",style: GoogleFonts.poppins( fontSize: 16.sp)),
                           ),
                           Padding(
                             padding:  EdgeInsets.only(left:16.h,top:1.h),
                             child: Icon(Icons.arrow_drop_up,size: 4.h,color: Color(0xffF6F6F7),),
                           )
                         ],
                       ),
                     
                       Padding(
                         padding:  EdgeInsets.only(top:1.0.h,),
                         child: Container(
                          width: 85.w,
                          height: 0.2.h,
                          color: Color(0xffF6F6F7),
                         ),
                       ),
                       Padding(
                          padding:  EdgeInsets.only(left:2.0.h,top:1.5.h),
                         child: Text("Şirket Cep Telefonu",style: GoogleFonts.poppins( fontSize: 16.sp)),
                       ),
                       
                     ],
                   ),
                 ),
                  Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("-",style: GoogleFonts.poppins( fontSize: 16.sp)),
                  )),
                  Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                   width: 85.w,
                   height: 5.h,
                   
                   child: Padding(
                     padding:  EdgeInsets.all(1.0.h),
                     child: Text("Sabit Telefon/Dahili",style: GoogleFonts.poppins( fontSize: 16.sp)),
                   ),
                   ),
                   Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("-",style: GoogleFonts.poppins( fontSize: 16.sp)),
                  )),
                   Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                   width: 85.w,
                   height: 5.h,
                   
                   child: Padding(
                     padding:  EdgeInsets.all(1.0.h),
                     child: Text("E-Posta",style: GoogleFonts.poppins( fontSize: 16.sp)),
                   ),
                   ),
                   Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("-",style: GoogleFonts.poppins( fontSize: 16.sp)),
                  )),
                   Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                   width: 85.w,
                   height: 13.h,
                   
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding:  EdgeInsets.only(left:2.0.h,top:2.h),
                             child: Icon(Icons.school,size: 3.h,)
                           ),
                           Padding(
                             padding:  EdgeInsets.only(left:2.0.h,top:2.h),
                             child: Text("Eğitim Bilgileri",style: GoogleFonts.poppins( fontSize: 16.sp)),
                           ),
                           Padding(
                             padding:  EdgeInsets.only(left:17.h,top:1.h),
                             child: Icon(Icons.arrow_drop_up,size: 4.h,color: Color(0xffF6F6F7),),
                           )
                         ],
                       ),
                     
                       Padding(
                         padding:  EdgeInsets.only(top:1.0.h,),
                         child: Container(
                          width: 85.w,
                          height: 0.2.h,
                          color: Color(0xffF6F6F7),
                         ),
                       ),
                       Padding(
                          padding:  EdgeInsets.only(left:2.0.h,top:1.5.h),
                         child: Text("Ön Lisans",style: GoogleFonts.poppins( fontSize: 16.sp)),
                       ),
                       
                     ],
                   ),
                 ),
                  Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("ADNAN MENDERES ÜNİVERSİTESİ(10000250) Bilgisayarlı Muhasebe ve Vergi Uygulamarı(50052) Başlangıç-Bitiş Yılı:2020-0",style: GoogleFonts.poppins( fontSize: 16.sp)),
                  )),
                  Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                   width: 85.w,
                   height: 13.h,
                   
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding:  EdgeInsets.only(left:2.0.h,top:2.h),
                             child: Icon(Icons.stairs_rounded,size: 3.h,)
                           ),
                           Padding(
                             padding:  EdgeInsets.only(left:2.0.h,top:2.h),
                             child: Text("Kariyer Bilgileri",style: GoogleFonts.poppins( fontSize: 16.sp)),
                           ),
                           Padding(
                             padding:  EdgeInsets.only(left:16.h,top:1.h),
                             child: Icon(Icons.arrow_drop_up,size: 4.h,color: Color(0xffF6F6F7),),
                           )
                         ],
                       ),
                     
                       Padding(
                         padding:  EdgeInsets.only(top:1.0.h,),
                         child: Container(
                          width: 85.w,
                          height: 0.2.h,
                          color: Color(0xffF6F6F7),
                         ),
                       ),
                       Row(
                         children: [
                           Padding(
                              padding:  EdgeInsets.only(left:2.0.h,top:1.5.h),
                             child: Icon(Icons.language)
                           ),
                           Padding(
                              padding:  EdgeInsets.only(left:2.0.h,top:1.5.h),
                             child: Text("Yabancı Dil"),
                           ),
                           Padding(
                             padding:  EdgeInsets.only(left:21.h,top:2.h),
                             child: Icon(Icons.arrow_drop_up,size: 4.h,color: Color(0xffF6F6F7),),
                           )
                         ],
                       ),
                       
                     ],
                   ),
                 ),
                 
               ],
             ),
           ),
          )
          
        ],
      ) ,
      )
      
    );
  }
}