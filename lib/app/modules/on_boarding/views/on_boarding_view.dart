import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:on_boarding_demo/app/utils/appcolors.dart';
import 'package:on_boarding_demo/app/utils/appsizes.dart';
import 'package:on_boarding_demo/app/widgets/horizontal_bar.dart';
import 'package:on_boarding_demo/app/widgets/second_button.dart';

import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: controller.pageController,
              onPageChanged: controller.selectedPageIndex.call,
              itemCount: controller.onBoardingPages.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      controller.onBoardingPages[index].image,
                    ),
                    const SizedBox(
                      height: AppSize.size90,
                    ),
                    Text(
                      controller.onBoardingPages[index].title,
                      style: GoogleFonts.poppins(
                        fontSize: AppSize.size20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.size30,
                    ),
                    Text(
                      controller.onBoardingPages[index].subTitle,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: AppSize.size14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.subTextColor,
                        wordSpacing: 5,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.size30,
                    ),
                  ],
                );
              },
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  vertical: 29,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppSize.size30,
                  ),
                  color: const Color.fromRGBO(237, 28, 36, 0.10),
                ),
              ),
            ),
            Positioned(
              bottom: 120,
              left: 150,
              child: Row(
                children: List.generate(
                  controller.onBoardingPages.length,
                  (index) => Obx(
                    () {
                      return HorizontalBar(
                        color: controller.selectedPageIndex.value == index ? AppColors.primary : AppColors.subTextColor,
                      );
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 140,
              child: Obx(
                () => SecondButton(
                  text: controller.isLastPage ? 'Get Started' : 'Next',
                  color: AppColors.whiteText,
                  size: AppSize.size14,
                  fontWeight: FontWeight.w500,
                  onpressed: controller.isLastPage ? controller.navigateToHome : controller.nevigateNextPage,
                ),
              ),
            ),
            Positioned(
              right: 30,
              child: TextButton(
                onPressed: () {
                  controller.navigateToHome();
                },
                child: Text(
                  'Skip',
                  style: GoogleFonts.poppins(
                    fontSize: AppSize.size15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
