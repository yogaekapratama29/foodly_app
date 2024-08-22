import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodly_app/themes/app_colors.dart';
import 'package:foodly_app/themes/app_fonts.dart';
import 'package:foodly_app/themes/app_themes_extensions.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

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
