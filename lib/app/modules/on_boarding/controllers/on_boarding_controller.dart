import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:on_boarding_demo/app/models/on_boarding_model.dart';
import 'package:on_boarding_demo/app/routes/app_pages.dart';

class OnBoardingController extends GetxController {
 var selectedPageIndex = 0.obs;
  var pageController = PageController();

  bool get isLastPage => selectedPageIndex.value == onBoardingPages.length - 1;

  void nevigateNextPage() {
    pageController.nextPage(
      duration: 300.milliseconds,
      curve: Curves.ease,
    );
  }

  void navigateToHome() {
    Get.offAllNamed(Routes.HOME);
    print('Button CLicked');
  }

  List<OnBoardingModel> onBoardingPages = [
    OnBoardingModel(
      image: 'assets/images/png/cv_hiring.png',
      title: 'Enhance Your Journey',
      subTitle: 'Get a holistic view of your  performance\nand inspire yourself to reach even\ngreater heights.',
    ),
    OnBoardingModel(
      image: 'assets/images/png/businesswomen.png',
      title: 'Foster Parents Informed',
      subTitle: 'Be informed on your child’s 360-degree\nperformance effortlessly with the touch\nof your fingertips.',
    ),
    OnBoardingModel(
      image: 'assets/images/png/youngman.png',
      title: 'swift Operations',
      subTitle: 'Have Instant access to the school\ncalendar and upcoming events.',
    ),
  ];
}
