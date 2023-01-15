import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vbt_sun_app_project/modules/login/login_binding.dart';
import 'package:vbt_sun_app_project/modules/login/login_screen.dart';

import 'routes/app_pages.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

bool isLoginScreen = false;

class _MyAppState extends State<MyApp> {
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    _initializeTimer();
  }

  void _initializeTimer() {
    if (_timer != null) {
      _timer?.cancel();
    }

    _timer = Timer(const Duration(minutes: 15), _logOutUser);
  }

  void _logOutUser() {
    _timer?.cancel();
    _timer = null;
    if (!isLoginScreen) {
      Get.offAll(() => const LoginScreen(), binding: LoginBinding());
    }
  }

  void _handleUserInteraction([_]) {
    _initializeTimer();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: _handleUserInteraction,
          onPanDown: _handleUserInteraction,
          child: GetMaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            initialRoute: Routes.LOGIN,
            enableLog: true,
            getPages: AppPages.routes,

            // home: const MyHomePage(title: 'Flutter Demo Home Page'),
          ),
        );
      },
    );
  }
}
