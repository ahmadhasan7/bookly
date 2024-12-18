import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/styles.dart';
class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;

  CustomButton(
      {super.key,
        required this.text,
        required this.backgroundColor,
        required this.textColor,
        this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(color: textColor),
        ),
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(15),
            )),
      ),
    );
  }
}
