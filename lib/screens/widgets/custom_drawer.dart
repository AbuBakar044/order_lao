import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_lao/screens/widgets/my_text.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Get.width / 1.5,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Container(
              color: Colors.lightBlue,
              height: 8.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.home),
                    const SizedBox(
                      width: 10.0,
                    ),
                    MyText(text: 'Home'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
