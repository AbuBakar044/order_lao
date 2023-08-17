import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_lao/controllers/splash_controller.dart';
import '../constants/images_constants.dart';
import '../screens/widgets/screen_loader.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put<SplashController>(SplashController());
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(kAppLogo),
          ),
          const Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Center(
              child: ScreenLoader(),
            ),
          ),
        ],
      ),
    );
  }
}
