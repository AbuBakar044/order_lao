import 'package:flutter/material.dart';
import 'package:order_lao/screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:order_lao/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Order Lao',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
