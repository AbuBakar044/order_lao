import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_lao/screens/home_screen.dart';

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
      Get.snackbar('Order Lao', 'Loggedin Successfully');
      Get.off(() => const HomeScreen());
    });
  }
}
