import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'bordro_detail_controller.dart';

class BordroDetailScreen extends GetView<BordroDetailController> {
  const BordroDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff567DF4),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 55.0, left: 20.0),
                child: Container(
                    width: double.infinity,
                    height: 5.h,
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back, color: Colors.white),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          "Employee Attendance",
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.sp),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 2.h,
              ),

              Container(
                  height: 100.h,
                  decoration: BoxDecoration(
                      color: Color(0xffF6F6F7),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      )),
                  child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  //color: Colors.red,

                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Colors.grey.shade300,
                                      width: 0.5.w)),
                              width: 85.w,
                              height: 12.h,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 17.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Salary Summary",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 1.w,
                                          height: 5.h,
                                          color: Color(0xff567DF4),
                                        ),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        Text("Due Date : 10/11/2022"),
                                        SizedBox(
                                          width: 25.w,
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Color(0xff567DF4),
                                                borderRadius:
                                                    BorderRadius.circular(40)),
                                            width: 10.w,
                                            height: 5.h,
                                            child: Center(
                                                child: Icon(
                                              Icons.file_download,
                                              color: Colors.white,
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ))
              // ),
            ],
          ),
        ));
  }
}
