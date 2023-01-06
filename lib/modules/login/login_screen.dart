import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(
            //   padding: EdgeInsets.only(top: 45),
            //   child: Stack(
            //     children: [
            //       Container(
            //         child: Image.asset("assets/circle.png"),
            //       ),
            //       Positioned(
            //           top: 10,
            //           left: 10,
            //           child: Image.asset("assets/sun_logo.png",
            //               width: 125, color: Colors.white70))
            //     ],
            //   ),
            // ),
            Stack(
              children: [
                Image.asset("assets/wave_up.png"),
                Positioned(
                    top: 28,
                    right: 0,
                    child: Image.asset(
                      "assets/sun_logo.png",
                      width: 110,
                      color: Colors.white,
                    )),
              ],
            ),

            DropdownButton(
              items: [DropdownMenuItem(child: Text("DENEME"))],
              onChanged: (value) {},
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Kullanıcı Adı",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Şifre",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            SizedBox(height: 3.h),
            Container(
              child: const Center(
                  child: Text(
                "Giriş",
                style: TextStyle(color: Colors.white),
              )),
              width: 332,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: const Color(0xff3B48B0),
              ),
            ),
            const SizedBox(
              height: 110,
            ),
            Image.asset("assets/wave.png")
          ],
        ),
      ),
    );
  }
}
