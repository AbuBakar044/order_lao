import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_lao/controllers/auth/login_controller.dart';
import 'package:order_lao/screens/auth/signup.dart';
import 'package:order_lao/screens/widgets/custom_button.dart';
import 'package:order_lao/screens/widgets/custom_form_field.dart';
import 'package:order_lao/screens/widgets/my_text.dart';
import 'package:order_lao/utils/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCtrl = Get.put<LoginController>(LoginController());
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: loginCtrl.loginFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyText(
                  text: 'Login',
                  size: 35.0,
                  weight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 40.0,
                ),
                CustomFormField(
                  controller: loginCtrl.emailCtrl,
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
                  controller: loginCtrl.passwordCtrl,
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
                  buttonName: 'Login',
                  onTap: () {
                    loginCtrl.checkValidation(
                      loginCtrl.emailCtrl.text,
                      loginCtrl.passwordCtrl.text,
                    );
                  },
                  buttonColor: Colors.green,
                  textColor: kWhiteColor,
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyText(text: 'Don\'t have an account?'),
                    TextButton(
                      onPressed: () {
                        Get.to(
                          () => SignupScreen(),
                        );
                      },
                      child: MyText(
                        text: 'Signup',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
