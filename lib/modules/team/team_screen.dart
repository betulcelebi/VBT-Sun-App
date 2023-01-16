import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(preferredSize: Size.fromHeight(5.0),
      //   child: AppBar(centerTitle: true,
      //   title:Text("Ekibim"),
      //     backgroundColor: Colors.yellow,
      //       //backgroundColor: const Color(0xff567DF4),
      //       elevation: 0,
          
           
      //       ),

            
      // ),

      //resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff567DF4),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 10.h,
            //color: const Color(0xff567DF4),
           // color: Colors.yellow,
            child: Padding(
              padding: EdgeInsets.only(top: 3.h, left: 1.h, right: 1.8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back, size: 4.h, color: Colors.white),
                  Text(
                    "Ekibim",
                    style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(fontSize: 20.sp, color: Colors.white)),
                  ),
                  Icon(Icons.filter_alt,size: 4.h, color: Colors.white)
                ],
              ),
            ),
          ),
          Text(
            "Direkt  Bağlı  Çalışanlar",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 16.sp, color: Colors.white)),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xffF6F6F7),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                )),
            child: GridView.builder(
              padding: EdgeInsets.only(top: 6.h, left: 3.h, right: 3.h),
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.10.h,
                crossAxisSpacing: 1.h,
                mainAxisSpacing: 1.h,
              ),
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade400),
                    color: Color(0xff567DF4),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.5.h, top: 2.5.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(3),
                            width: 10.h,
                            height: 10.h,
                            decoration: BoxDecoration(
                                //color: Colors.grey,
                                color: Colors.blue.shade100,
                                borderRadius: BorderRadius.circular(60)),
                            child: Icon(Icons.photo_camera)),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text("CENGİZHAN BOZDEMİR",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(fontSize: 15.sp))),
                        Text("Stajyer (Lise)",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontSize: 15.sp,
                            )))
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
