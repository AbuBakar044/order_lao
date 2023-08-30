import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_lao/screens/home_screen.dart';
import 'package:order_lao/screens/profile/my_profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  void checkValidation(String email, String password) {
    if (loginFormKey.currentState!.validate()) {
      loginUserWithFirebase(email, password);
    }
  }

  Future<void> loginUserWithFirebase(String email, String password) async {
    await firebaseAuth
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      saveDataToPreferences(
        email,
        value.user!.uid,
      );
      Get.snackbar('Order Lao', 'Loggedin Successfully');
      Get.off(() => const MyProfile());
    });
  }

  Future<void> saveDataToPreferences(String email, String id) async {
    final preferences = await SharedPreferences.getInstance();
    preferences.setString('email', email);
    preferences.setString('id', id);

    print('...................This is User Id $id');
  }
}
