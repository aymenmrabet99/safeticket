import 'package:flutter/material.dart';
import '/core/app_export.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    // Marked as const
    super.key, // Use super.key
    this.height,
    this.shape,
    this.loadingWidth,
    this.loading,
    this.title,
    this.centerTitle,
    this.actions,
  });

  final double? height;
  final ShapeBorder? shape;
  final double? loadingWidth;
  final Widget? loading;
  final Widget? title;
  final bool? centerTitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      shape: shape,
      toolbarHeight: height ?? 56.h,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      leadingWidth: loadingWidth ?? 0,
      leading: loading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(SizeUtils.width, height ?? 56.h);
}
