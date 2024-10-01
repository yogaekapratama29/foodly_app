import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodly_app/themes/app_colors.dart';
import 'package:foodly_app/themes/app_fonts.dart';
import 'package:foodly_app/themes/app_themes_extensions.dart';

class Onboardingpage extends StatefulWidget {
  const Onboardingpage({super.key});

  @override
  State<Onboardingpage> createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  final _pageController = PageController();
  // untuk mengetahui kita lagi di page berapa
  int _activeIndex = 0;

  // List untuk konten dalam Reuseable Widget
  final List<_onBoardingPageContent> _pages = const [
    _onBoardingPageContent(
        imagePath: "assets/images/onBoarding1.png",
        title: "Order Your Food",
        description: "Now you can order your food anytime from your mobile."),
    _onBoardingPageContent(
        imagePath: "assets/images/onBoarding2.png",
        title: "Safe Food Transfer",
        description:
            "We maintain safety and cleanliness while preparing your food."),
    _onBoardingPageContent(
        imagePath: "assets/images/onBoarding3.png",
        title: "Fast Delivery",
        description: "We deliver your food immediately at your doorsteps."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: _activeIndex == 0
                  ? null
                  : () => _pageController.previousPage(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.ease),
              child: Container(
                margin: EdgeInsets.only(left: 35, bottom: 7),
                padding: EdgeInsets.all(13),
                decoration: _activeIndex == 0
                    ? null
                    : BoxDecoration(
                        color: AppColors.secondaryColor,
                        borderRadius: BorderRadius.circular(15)),
                child: _activeIndex == 0
                    ? null
                    : SvgPicture.asset("assets/icons/arrow-left.svg"),
              ),
            ),
            Expanded(
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: _pages.length,
                  onPageChanged: (index) {
                    setState(() {
                      _activeIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return _pages[index];
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // indicator dot Reusable
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(_pages.length, (index) =>Container(
                      margin:EdgeInsets.only(right: 8) ,
                        width: _activeIndex == index ? 21 : 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: _activeIndex == index
                                ? AppColors.mainColor
                                : AppColors.gray2Color,
                            shape: _activeIndex == index
                                ? BoxShape.rectangle
                                : BoxShape.circle,
                            borderRadius: _activeIndex == index
                                ? BorderRadius.circular(40)
                                : null),
                      ) )
                    
                  ),
                  GestureDetector(
                    onTap: _activeIndex == _pages.length - 1
                        ? () {}
                        : () => _pageController.jumpToPage(_pages.length - 1),
                    child: Text(
                      _activeIndex == _pages.length - 1
                          ? "Get Started"
                          : "Skip",
                      style: AppFonts.body2.mainColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        )));
  }
}

// untuk me reusable wigdet
class _onBoardingPageContent extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  const _onBoardingPageContent(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Image.asset(
            imagePath,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              children: [
                AutoSizeText(
                  title,
                  style: AppFonts.heading2,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                AutoSizeText(
                  description,
                  style: AppFonts.paragraph1.gray,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
