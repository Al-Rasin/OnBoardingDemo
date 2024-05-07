import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:on_boarding_demo/app/utils/appcolors.dart';
import 'package:on_boarding_demo/app/utils/appsizes.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            SvgPicture.asset('assets/images/svg/logo.svg'),
            const Spacer(),
            const Text(
              "Fingerprint Education Management System",
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: AppSize.size12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: AppSize.size40),
          ],
        ),
      ),
    );
  }
}
