import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import the package for 'h'
import 'base_button.dart';

class CustomElevatedButton extends BaseButton {
  const CustomElevatedButton({
    super.key, // Use super.key
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    super.margin, // Use super.margin
    super.onPressed, // Use super.onPressed
    super.buttonStyle, // Use super.buttonStyle
    super.alignment, // Use super.alignment
    super.buttonTextStyle, // Use super.buttonTextStyle
    super.isDisabled, // Use super.isDisabled
    super.height, // Use super.height
    super.width, // Use super.width
    required super.text, // Use super.text
  });

  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
          alignment: alignment ?? Alignment.center,
          child: buildElevatedButtonWidget,
        )
        : buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => Container(
    height: height ?? 40.h, // Removed 'this.'
    width: width ?? double.maxFinite, // Removed 'this.'
    margin: margin,
    decoration: decoration,
    child: ElevatedButton(
      style: buttonStyle,
      onPressed: isDisabled ?? false ? null : onPressed ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          leftIcon ?? const SizedBox.shrink(),
          Text(
            text,
            style:
                buttonTextStyle ??
                TextStyle(), // Replace with your actual text style
          ),
          rightIcon ?? const SizedBox.shrink(),
        ],
      ),
    ),
  );
}
