import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'approve_controller.dart';

class Approve extends GetView<ApproveController> {
  const Approve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff567DF4),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 12.5.h,
            color: const Color(0xff567DF4),
            child: Padding(
              padding: EdgeInsets.only(top: 3.h, left: 1.h, right: 1.8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.0.h),
                    child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(Icons.arrow_back,
                            size: 4.h, color: Colors.white)),
                  ),
                  //  Padding(
                  //    padding:  EdgeInsets.only(left:2.0.h),
                  //    child: Text("Onaylarım",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20.sp,color: Colors.white)),),
                  //  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.0.h),
                    child: GestureDetector(
                      onTap: () {
                        Get.defaultDialog(
                          backgroundColor: Colors.grey.shade200,
                          title: "",
                          content: SizedBox(
                            height: 20.h,
                            width: 20.h,
                            child: ListView.builder(itemCount:controller.approvefilters.length,
                            itemBuilder:(context, index) {
                              return Container(
                                width: 12.h,
                                  height: 6.h,
                                  child: GestureDetector(
                                    onTap: () {
                                      controller.getApprove(controller.approvefilters[index]["id"]);
                                       Get.back();
                                    },
                                    child: Text(controller.approvefilters[index]["description"],
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                  ),
                              );
                            },  ),
                          )
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white12,
                          ),
                          width: 10.w,
                          height: 5.h,
                          child: Icon(Icons.filter_alt,
                              size: 4.h, color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffF6F6F7),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: GetBuilder<ApproveController>(
                init: ApproveController(),
                builder: (controller) {
                  if (controller.approveResponse?.data == null) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                   // physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.approveResponse?.data
                            ?.pendingRequestList?.length ??
                        0,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(2.0.h),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 10.0,
                                spreadRadius: 5,
                                offset: const Offset(
                                  20,
                                  20,
                                ),
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 40.h,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 1.5.h, top: 3.h, bottom: 2.h),
                            child: Row(
                              children: [
                                Container(
                                  width: 1.w,
                                  height: 40.h,
                                  color: Colors.blue,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 1.5.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "${controller.approveResponse?.data?.pendingRequestList?[index].rEQDATE?.split(" ").first.substring(0, 10) ?? " "}",
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 16.sp,
                                                    color:
                                                        Colors.grey.shade400)),
                                          ),
                                          SizedBox(
                                            width: 0.8.w,
                                          ),
                                          Text(
                                            //"02.12.2022 19.45",
                                            "${controller.approveResponse?.data?.pendingRequestList?[index].rEQDATE?.split(" ").first.substring(11, 19) ?? " "}",
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 16.sp,
                                                    color:
                                                        Colors.grey.shade400)),
                                          ),
                                          SizedBox(
                                            width: 30.w,
                                          ),
                                          Icon(
                                            Icons.check_box_outlined,
                                            size: 4.5.h,
                                            color: Color(0xff567DF4),
                                          )
                                        ],
                                      ),
                                      Text(
                                        //"Performans Yönetimi",
                                        controller
                                                .approveResponse
                                                ?.data
                                                ?.pendingRequestList?[index]
                                                .rEQNAME ??
                                            "",
                                        style: GoogleFonts.poppins(
                                            textStyle:
                                                TextStyle(fontSize: 18.sp)),
                                      ),
                                      Text(
                                        "Talep No",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.grey.shade400)),
                                      ),
                                      Text(
                                        // "25",
                                        "${controller.approveResponse?.data?.pendingRequestList?[index].iDMASTER ?? ""}",
                                        style: GoogleFonts.poppins(
                                            textStyle:
                                                TextStyle(fontSize: 18.sp)),
                                      ),
                                      Text(
                                        "Talep Eden",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.grey.shade400)),
                                      ),
                                      Text(
                                        // "Kadir Aydoğan",
                                        controller
                                                .approveResponse
                                                ?.data
                                                ?.pendingRequestList?[index]
                                                .rEQEMPLOYEE ??
                                            "",
                                        style: GoogleFonts.poppins(
                                            textStyle:
                                                TextStyle(fontSize: 18.sp)),
                                      ),
                                      Text(
                                        "Atanan Kişi",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.grey.shade400)),
                                      ),
                                      Text(
                                        // "Mümin Sürer",
                                        controller
                                                .approveResponse
                                                ?.data
                                                ?.pendingRequestList?[index]
                                                .aSSIGNEMPLOYEE ??
                                            "",
                                        style: GoogleFonts.poppins(
                                            textStyle:
                                                TextStyle(fontSize: 18.sp)),
                                      ),
                                      Text(
                                        "Açıklama",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.grey.shade400)),
                                      ),
                                      Text(
                                        // "Açıklama yazısı gelecek",
                                        controller
                                                .approveResponse
                                                ?.data
                                                ?.pendingRequestList?[index]
                                                .rEQUESTDETAIL ??
                                            "",
                                        style: GoogleFonts.poppins(
                                            textStyle:
                                                TextStyle(fontSize: 18.sp)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                //child:
              ),
            ),
          )
        ],
      ),
    );
  }
}
