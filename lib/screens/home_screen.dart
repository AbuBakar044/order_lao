import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:order_lao/screens/widgets/custom_drawer.dart';
import 'package:order_lao/screens/widgets/my_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: MyText(text: 'Home'),
        centerTitle: true,
      ),
      drawer: CustomDrawer(),
    );
  }
}

