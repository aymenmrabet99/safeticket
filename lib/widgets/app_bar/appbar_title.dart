import 'package:flutter/material.dart';
import '/core/app_export.dart';

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({
    super.key, // Use super.key
    required this.text,
    this.onTap,
    this.margin,
  });

  final String text;
  final Function? onTap;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: Text(
          text,
          style: CustomTextStyles.titleMedium18.copyWith(
            color: appTheme.black900,
          ),
        ),
      ),
    );
  }
}
