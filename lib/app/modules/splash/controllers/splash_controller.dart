import 'package:get/get.dart';
import 'package:on_boarding_demo/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToOtherScreen();
  }

  navigateToOtherScreen() async {
    Future.delayed(
      const Duration(seconds: 2),
      () async {
        await Get.offAllNamed(Routes.ON_BOARDING);
      },
    );
  }
}
