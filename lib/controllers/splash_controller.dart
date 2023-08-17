import 'package:get/get.dart';
import 'package:order_lao/screens/home_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.offAll(() => const HomeScreen());
    });
    super.onInit();
  }

}
