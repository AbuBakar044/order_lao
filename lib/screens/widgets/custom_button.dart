import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_lao/screens/widgets/my_text.dart';
import 'package:order_lao/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback? onTap;
  final Color? textColor;
  final Color? buttonColor;

  const CustomButton({
    super.key,
    required this.buttonName,
    this.onTap,
    this.textColor,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(buttonColor),
          fixedSize: MaterialStatePropertyAll(
            Size(
              Get.width / 2,
              55.0,
            ),
          )),
      child: MyText(
        text: buttonName,
        color: textColor ?? kBlackColor,
      ),
    );
  }
}
