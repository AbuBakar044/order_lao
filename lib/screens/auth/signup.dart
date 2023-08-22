import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_lao/controllers/auth/login_controller.dart';
import 'package:order_lao/controllers/auth/signup_controller.dart';
import 'package:order_lao/screens/widgets/custom_button.dart';
import 'package:order_lao/screens/widgets/custom_form_field.dart';
import 'package:order_lao/screens/widgets/my_text.dart';
import 'package:order_lao/utils/colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signupCtrl = Get.put<SignupController>(SignupController());
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: signupCtrl.signupFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyText(
                  text: 'Signup',
                  size: 35.0,
                  weight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 40.0,
                ),
                CustomFormField(
                  controller: signupCtrl.emailCtrl,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return '*please add name';
                    }
                  },
                  hint: 'Name',
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CustomFormField(
                  controller: signupCtrl.emailCtrl,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return '*please add email';
                    }
                  },
                  hint: 'Email',
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CustomFormField(
                  controller: signupCtrl.passwordCtrl,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return '*please add password';
                    }
                  },
                  hint: 'Password',
                ),
                const SizedBox(
                  height: 30.0,
                ),
                CustomButton(
                  buttonName: 'Signup',
                  onTap: () {
                    signupCtrl.checkValidation();
                  },
                  buttonColor: Colors.green,
                  textColor: kWhiteColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
