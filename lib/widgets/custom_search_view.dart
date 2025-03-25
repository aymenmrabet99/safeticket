import 'package:flutter/material.dart';
import '../core/app_export.dart'; // Ensure this import is correct

class CustomSearchView extends StatelessWidget {
  const CustomSearchView({
    super.key, // Use super.key
    this.alignment,
    this.width,
    this.boxDecoration,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
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
    this.onChanged,
  });

  final Alignment? alignment;
  final double? width;
  final BoxDecoration? boxDecoration;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autofocus;
  final TextStyle? textStyle;
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
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
          alignment: alignment ?? Alignment.center,
          child: searchViewWidget(context),
        )
        : searchViewWidget(context);
  }

  Widget searchViewWidget(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      decoration: boxDecoration,
      child: TextFormField(
        scrollPadding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        controller: controller,
        focusNode: focusNode,
        onTapOutside: (event) {
          focusNode?.unfocus();
        },
        autofocus: autofocus,
        style:
            textStyle ??
            CustomTextStyles
                .bodySmallGray900cc, // Ensure CustomTextStyles is defined
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: decoration,
        validator: validator,
        onChanged: onChanged,
      ),
    );
  }

  InputDecoration get decoration {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: hintStyle ?? theme.textTheme.bodySmall,
      prefixIcon:
          prefix ??
          Container(
            margin: EdgeInsets.fromLTRB(8.h, 6.h, 22.h, 6.h),
            child: CustomImageView(
              imagePath:
                  ImageConstant
                      .imgSymboledelInterfacederecherche2, // Ensure ImageConstant is defined
              height: 24.h,
              width: 20.h,
            ),
          ),
      prefixIconConstraints:
          prefixConstraints ?? BoxConstraints(maxHeight: 40.h),
      suffixIcon:
          suffix ??
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: IconButton(
              onPressed: () => controller?.clear(),
              icon: Icon(Icons.clear, color: Colors.grey.shade600),
            ),
          ),
      suffixIconConstraints:
          suffixConstraints ?? BoxConstraints(maxHeight: 40.h),
      isDense: true,
      contentPadding: contentPadding ?? EdgeInsets.all(6.h),
      fillColor: fillColor ?? appTheme.blueGray10001,
      filled: filled,
      border:
          borderDecoration ??
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.h),
            borderSide: BorderSide.none,
          ),
      enabledBorder:
          borderDecoration ??
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.h),
            borderSide: BorderSide.none,
          ),
      focusedBorder: (borderDecoration ??
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.h)))
          .copyWith(
            borderSide: BorderSide(color: theme.colorScheme.primary, width: 1),
          ),
    );
  }
}
