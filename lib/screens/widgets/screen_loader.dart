import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter/material.dart';
import 'package:order_lao/utils/colors.dart';

class ScreenLoader extends StatelessWidget {
  const ScreenLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: const CircleBorder(),
      child: CircleAvatar(
        radius: 28.0,
        backgroundColor: kWhiteColor,
        child: LoadingAnimationWidget.twistingDots(
          leftDotColor: Colors.pink,
          rightDotColor: Colors.black,
          size: 40.0,
        ),
      ),
    );
  }
}
