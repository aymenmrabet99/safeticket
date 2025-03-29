import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../core/app_export.dart';

// ignore_for_file: must_be_immutable
class CustomPinCodeTextField extends StatelessWidget {
  const CustomPinCodeTextField({
    super.key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  });

  final Alignment? alignment;
  final BuildContext context;
  final TextEditingController? controller;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Function(String) onChanged;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
          alignment: alignment ?? Alignment.center,
          child: pincodeTextFieldWidget,
        )
        : pincodeTextFieldWidget;
  }

  Widget get pincodeTextFieldWidget => PinCodeTextField(
    appContext: context,
    controller: controller,
    length: 4,
    keyboardType: TextInputType.number,
    textStyle: textStyle ?? CustomTextStyles.onPrimaryContainer,
    hintStyle: hintStyle ?? CustomTextStyles.onPrimaryContainer,
    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    enableActiveFill: true,
    pinTheme: PinTheme(
      fieldHeight: 50.h,
      fieldWidth: 50.h,
      shape: PinCodeFieldShape.box,
      borderRadius: BorderRadius.circular(5.h),
      inactiveFillColor: Theme.of(context).colorScheme.onPrimaryContainer,
      inactiveColor: Theme.of(context).colorScheme.onPrimaryContainer,
      activeFillColor: Theme.of(context).colorScheme.onPrimaryContainer,
      activeColor: Theme.of(context).colorScheme.onPrimaryContainer,
      selectedFillColor: Theme.of(context).colorScheme.onPrimaryContainer,
      selectedColor: Theme.of(context).colorScheme.onPrimaryContainer,
    ),
    onChanged: onChanged,
    validator: validator,
  );
}
