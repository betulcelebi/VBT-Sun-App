import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/notification/notification_controller.dart';

class Notification extends GetView<NotificationController> {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff567DF4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 3.0.h),
              child: Container(
                width: double.infinity,
                height: 8.h,
                //color: Colors.red,
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 2.0.h, right: 3.5.h, top: 0.5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_back,
                            size: 4.h,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3.0.h),
                            child: Text(
                              "Bildirimler",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white12,
                          ),
                          width: 10.w,
                          height: 5.h,
                          child: Icon(Icons.delete,
                              size: 4.h, color: Colors.white))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.0.h),
              child: Container(
                  decoration: const BoxDecoration(
                      //color: Color(0xffF6F6F7),
                      color: Color(0xffF6F6F7),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      )),
                  width: double.infinity,
                  height: 100.h,
                  child: GetBuilder<NotificationController>(
                      init: NotificationController(),
                      builder: (controller) {
                        return Container(
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount:
                                controller.notificationResponse?.data?.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 2.0.h, left: 3.h, right: 3.h),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      // width: 5.w,
                                      //height: 5.h,

                                      child: Padding(
                                        padding: EdgeInsets.only(right: 1.5.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 1.w,
                                              height: 6.h,
                                              color: Color(0xff567DF4),
                                            ),
                                            const Icon(
                                              Icons.message_sharp,
                                              color: Color(0xff567DF4),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  DateFormat("dd.MM.yyyy HH:mm").format(
                                                    DateTime.parse(
                                                      controller
                                                              .notificationResponse
                                                              ?.data?[index]
                                                              .nOTIFICATIONDATE ??
                                                          DateTime.now().toString(),
                                                    ),
                                                  ),
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 15.sp,
                                                      color:
                                                          Colors.grey.shade500,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "${controller.notificationResponse?.data?[index].mESSAGETITLE ?? ""}",
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 15.sp,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 60.w,
                                                  child: Text(
                                                    controller.notificationResponse?.data?[index].mESSAGEBODY ?? "",
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        fontSize: 15.sp,
                                                        color: Colors
                                                            .grey.shade500,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Icon(
                                              Icons.delete_outline_outlined,
                                              color: Color(0xff567DF4),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        );
                      })),
            )
          ],
        ),
      ),
    );
  }
}