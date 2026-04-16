import 'package:flutter/material.dart';
import '../constants.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = kPrimaryColor, required this.height, required this.width,
  });

  final void Function()? onPressed;
  final Text text;
  final Color? backgroundColor;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: kPrimaryColor,
        backgroundColor: backgroundColor,
        fixedSize: Size(width,height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: kPrimaryColor),
        ),
      ),
      child: text,
    );
  }
}