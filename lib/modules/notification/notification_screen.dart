import 'package:flutter/cupertino.dart';
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
      body: Column(
        children: [
          Container(
            width: 43.75.h,
            height: 13.h,
            color: const Color(0xff567DF4),
            child: Padding(
              padding: EdgeInsets.only(top: 3.h, left: 1.h, right: 1.8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back,
                          size: 4.h, color: Colors.white)),
                  GestureDetector(
                    onTap: () {
                      showCupertinoModalPopup<void>(
                        context: context,
                        builder: (BuildContext context) => CupertinoActionSheet(
                          title: const Text('Bildirimleri sil'),
                          actions: <CupertinoActionSheetAction>[
                            CupertinoActionSheetAction(
                              onPressed: () {
                                controller.deleteBulkPushMessages(1);
                                Navigator.pop(context);
                              },
                              child: const Text('Okunanları Sil'),
                            ),
                            CupertinoActionSheetAction(
                              onPressed: () {
                                controller.deleteBulkPushMessages(2);
                                Navigator.pop(context);
                              },
                              child: const Text('Tümünü Sil'),
                            ),
                            CupertinoActionSheetAction(
                              isDestructiveAction: true,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Vazgeç'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(0.9.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.25.h),
                            color: Colors.white.withOpacity(0.15)),
                        width: 5.h,
                        height: 5.h,
                        child: Image.asset(
                          "assets/trash.png",
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xffEEF0FC),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(3.125.h),
                    topLeft: Radius.circular(3.125.h),
                  )),
              width: double.infinity,
              height: 100.h,
              child: GetBuilder<NotificationController>(
                init: NotificationController(),
                builder: (controller) {
                  return Container(
                    child: ClipRRect(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount:
                            controller.notificationResponse?.data?.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              if (controller.notificationResponse?.data?[index]
                                      .iSREAD ==
                                  false) {
                                controller.getReadPushMessage(
                                  controller.notificationResponse?.data?[index]
                                      .iDPUSHNOTIFICATIONDETAIL,
                                );
                              }
                            },
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 2.0.h, left: 3.h, right: 3.h),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade200,
                                            blurRadius: 1.25.h,
                                            spreadRadius: 0.625.h,
                                            offset: Offset(
                                              2.5.h,
                                              2.5.h,
                                            ),
                                          )
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(2.5.h)),
                                    child: Padding(
                                      padding: EdgeInsets.all(1.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 1.w,
                                            height: 7.h,
                                            color: controller
                                                        .notificationResponse
                                                        ?.data?[index]
                                                        .iSREAD ==
                                                    true
                                                ? Color(0xffe6e6e6)
                                                : Color(0xff567DF4),
                                          ),
                                          Icon(
                                            Icons.message,
                                            color: controller
                                                        .notificationResponse
                                                        ?.data?[index]
                                                        .iSREAD ==
                                                    true
                                                ? Color(0xffe6e6e6)
                                                : Color(0xff567DF4),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                DateFormat("dd.MM.yyyy HH:mm")
                                                    .format(
                                                  DateTime.parse(
                                                    controller
                                                            .notificationResponse
                                                            ?.data?[index]
                                                            .nOTIFICATIONDATE ??
                                                        DateTime.now()
                                                            .toString(),
                                                  ),
                                                ),
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    fontSize: 15.sp,
                                                    color: Colors.grey.shade500,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 60.w,
                                                child: Text(
                                                  "${controller.notificationResponse?.data?[index].mESSAGETITLE ?? ""}",
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 15.sp,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 60.w,
                                                child: Text(
                                                  controller
                                                          .notificationResponse
                                                          ?.data?[index]
                                                          .mESSAGEBODY ??
                                                      "",
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 15.sp,
                                                      color:
                                                          Colors.grey.shade500,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                controller.deletePushMessage(
                                                    controller
                                                        .notificationResponse
                                                        ?.data?[index]
                                                        .iDPUSHNOTIFICATIONDETAIL);
                                              },
                                              icon: Padding(
                                                padding: EdgeInsets.all(0.8.h),
                                                child: Image.asset(
                                                  "assets/trash.png",
                                                  color: Color(0xff567DF4),
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
