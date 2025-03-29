import 'package:flutter/material.dart'; // Only necessary import

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get none => BoxDecoration();
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key, // Use super.key for better readability
    this.alignment,
    this.height,
    this.width,
    this.decoration,
    this.padding,
    this.onlap,
    this.child,
  });

  final Alignment? alignment;
  final double? height;
  final double? width;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onlap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
          alignment: alignment ?? Alignment.center,
          child: iconButtonWidget,
        )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
    height: height ?? 0,
    width: width ?? 0,
    child: DecoratedBox(
      decoration: decoration ?? BoxDecoration(),
      child: IconButton(
        padding: padding ?? EdgeInsets.zero,
        onPressed: onlap, // Corrected from onTap to onlap
        icon: child ?? Container(),
      ),
    ),
  );
}
