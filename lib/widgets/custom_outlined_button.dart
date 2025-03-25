import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'base_button.dart';

class CustomOutlinedButton extends BaseButton {
  const CustomOutlinedButton({
    super.key, // Pass key to superclass
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    this.label,
    super.onPressed, // Use super parameter
    super.buttonStyle, // Use super parameter
    super.buttonTextStyle, // Use super parameter
    super.isDisabled, // Use super parameter
    super.alignment, // Use super parameter
    super.height, // Use super parameter
    super.width, // Use super parameter
    super.margin, // Use super parameter
    required super.text, // Use super parameter
  });

  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final Widget? label;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
          alignment: alignment ?? Alignment.center,
          child: buildOutlinedButtonWidget,
        )
        : buildOutlinedButtonWidget;
  }

  Widget get buildOutlinedButtonWidget => Container(
    height: height ?? 40.h,
    width: width ?? double.maxFinite,
    margin: margin,
    decoration: decoration,
    child: OutlinedButton(
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
                TextStyle(), // Replace with your custom text style
          ),
          rightIcon ?? const SizedBox.shrink(),
        ],
      ),
    ),
  );
}
