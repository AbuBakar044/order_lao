import 'package:get/get.dart';
import 'package:order_lao/screens/auth/login.dart';
import 'package:order_lao/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    
    Future.delayed(const Duration(seconds: 4), () {
      getUserPreferences();
      //Get.offAll(() => const LoginScreen());
    });
    super.onInit();
  }

  Future<void> getUserPreferences() async {
    final preferences = await SharedPreferences.getInstance();

    if (preferences != null && preferences.containsKey('email')) {
      Get.offAll(() => const HomeScreen());
    } else {
      Get.offAll(() => const LoginScreen());
    }
  }
}
