import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_lao/screens/home_screen.dart';

class SignupController extends GetxController {
  final emailCtrl = TextEditingController();
  final nameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final signupFormKey = GlobalKey<FormState>();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  void checkValidation(String name, String email, String password) {
    if (signupFormKey.currentState!.validate()) {
      //Get.snackbar('Order Lao', 'Form Validated');
      createUserInFirebase(name, email, password);
    }
  }

  Future<void> createUserInFirebase(
      String name, String email, String password) async {
    firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      firestore.collection('users').doc(value.user!.uid).set(
        {
          'name': name,
          'email': email,
          'password': password,
        },
      ).then((val) {
        Get.snackbar('Order Lao', 'Profile created successfully');
        Get.off(() => const HomeScreen());
      });
    });
  }
}
