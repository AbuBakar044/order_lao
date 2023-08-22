import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

  void checkValidation() {
    if (loginFormKey.currentState!.validate()) {
      Get.snackbar('Order Lao', 'Form Validated');
    }
  }
}
