import 'package:flutter/material.dart';
import '/core/app_export.dart';

class AppbarSubtitleTwo extends StatelessWidget {
  const AppbarSubtitleTwo({
    // Marked as const
    super.key, // Use super.key
    required this.text,
    this.onTap,
    this.margin,
  });

  final String text;
  final Function? onTap; // Renamed to onTap
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: () {
          onTap?.call(); // Use onTap consistently
        },
        child: Text(
          text,
          style: CustomTextStyles.titleMediumMedium.copyWith(
            // Ensure titleMediumMedium is defined
            color: appTheme.black900,
          ),
        ),
      ),
    );
  }
}
