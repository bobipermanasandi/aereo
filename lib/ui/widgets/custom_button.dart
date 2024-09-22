import 'package:flutter/material.dart';

import '../../shared/themes.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Function() onPressed;
  final EdgeInsetsGeometry margin;
  const CustomButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 55,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        child: Text(
          text,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
