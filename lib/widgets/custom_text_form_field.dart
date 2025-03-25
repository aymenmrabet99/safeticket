import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get outlineBlack => OutlineInputBorder(
    borderRadius: BorderRadius.circular(5.h),
    borderSide: BorderSide(color: appTheme.black900, width: 1),
  );

  static OutlineInputBorder get fillOnErrorContainer => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.h),
    borderSide: BorderSide.none,
  );

  static OutlineInputBorder get outlineOnPrimary => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.h),
    borderSide: BorderSide(color: theme.colorScheme.onPrimary, width: 1),
  );

  static OutlineInputBorder get outlineBlueGray => OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.h),
    borderSide: BorderSide(color: appTheme.blueGray100, width: 1),
  );
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.alignment,
    this.width,
    this.boxDecoration,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autoFocus = false,
    this.textStyle,
    this.obscureText = false,
    this.readOnly = false,
    this.onTap,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
  });

  final Alignment? alignment;
  final double? width;
  final BoxDecoration? boxDecoration;
  final EdgeInsets? scrollPadding;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autoFocus;
  final TextStyle? textStyle;
  final bool obscureText;
  final bool readOnly;
  final VoidCallback? onTap;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final int? maxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool filled;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
          alignment: alignment ?? Alignment.center,
          child: textFormFieldWidget(context),
        )
        : textFormFieldWidget(context);
  }

  Widget textFormFieldWidget(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      decoration: boxDecoration,
      child: TextFormField(
        scrollPadding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        controller: controller,
        focusNode: focusNode,
        autofocus: autoFocus,
        style:
            textStyle ??
            CustomTextStyles.bodyLarge_1, // Ensure bodyLarge is defined
        obscureText: obscureText,
        readOnly: readOnly,
        onTap: onTap,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: decoration,
        validator: validator,
      ),
    );
  }

  InputDecoration get decoration {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: hintStyle ?? theme.textTheme.titleLarge,
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      isDense: true,
      contentPadding: contentPadding ?? EdgeInsets.all(12.h),
      fillColor: fillColor ?? theme.colorScheme.onErrorContainer,
      filled: filled,
      border:
          borderDecoration ??
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.h),
            borderSide: BorderSide(
              color: appTheme.black900.withValues(
                alpha: 0.25,
              ), // Fixed deprecated withOpacity
              width: 1,
            ),
          ),
      enabledBorder:
          borderDecoration ??
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.h),
            borderSide: BorderSide(
              color: appTheme.black900.withValues(
                alpha: 0.25,
              ), // Fixed deprecated withOpacity
              width: 1,
            ),
          ),
      focusedBorder:
          borderDecoration ??
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.h),
            borderSide: BorderSide(color: theme.colorScheme.primary, width: 1),
          ),
    );
  }
}
