import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final emailCtrl = TextEditingController();
  final nameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final signupFormKey = GlobalKey<FormState>();

  void checkValidation() {
    if (signupFormKey.currentState!.validate()) {
      Get.snackbar('Order Lao', 'Form Validated');
    }
  }
}
