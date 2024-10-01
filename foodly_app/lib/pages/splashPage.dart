import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodly_app/routes/app_route_name.dart';
import 'package:foodly_app/themes/app_colors.dart';
import 'package:foodly_app/themes/app_fonts.dart';
import 'package:foodly_app/themes/app_themes_extensions.dart';
import 'package:go_router/go_router.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(Duration(seconds: 3), callback);
  }

  void callback(){
    context.goNamed(AppRouteName.Onboardingpage.name);
  }

  @override
  void dispose() {
   _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // untuk status bar di atas hp
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
          child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // untuk rendering SVG
            SvgPicture.asset(
              "assets/images/Logo.svg",
            ),
            Positioned(
              bottom: 0,
              child: Text(
                "Foodly",
                style: AppFonts.heading1.white,
              ),
            )
          ],
        ),
      )),
    );
  }
}
