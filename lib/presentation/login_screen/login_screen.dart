import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController phoneNumberInputController = TextEditingController();
  TextEditingController mobileNumberInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onErrorContainer,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(14.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 24.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "Welcome Back",
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "Login to access your account",
                        style: CustomTextStyles.bodyMediumPoppinsBluegray400,
                      ),
                    ),
                  ),
                  SizedBox(height: 26.h),
                  _buildPhoneNumberInput(context),
                  SizedBox(height: 70.h),
                  _buildMobileNumberInput(context),
                  SizedBox(height: 24.h),
                  _buildLoginForm(context),
                  SizedBox(height: 16.h),
                  _buildLoginButton(context),
                  SizedBox(height: 16.h),
                  _buildForgotPasswordButton(context),
                  SizedBox(height: 10.h),
                  _buildAlternativeSigninOptions(context),
                  SizedBox(height: 4.h),
                  _buildGoogleSignInButton(context),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: CustomTextStyles.bodySmallPoppinsBlueGray400,
                      ),
                      Text(
                        "Sign Up",
                        style: CustomTextStyles.labelLargePoppins,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: CustomTextFormField(
        width: 300.h,
        controller: phoneNumberInputController,
        hintText: "Phone Number or E-mail",
        hintStyle: CustomTextStyles.titleMediumPoppinsGray700,
        alignment: Alignment.centerLeft,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.h),
        borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainer,
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileNumberInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: CustomTextFormField(
        controller: mobileNumberInputController,
        hintText: "+628523467642",
        hintStyle: CustomTextStyles.bodyMediumArimoPrimaryContainer,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.h),
        borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary,
        filled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordInput(BuildContext context) {
    return CustomTextFormField(
      controller: passwordInputController,
      hintText: "••••••••••••",
      hintStyle: CustomTextStyles.bodyLargeArimoPrimaryContainer,
      textInputAction: TextInputAction.done,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 10.h, 20.h, 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.img15,
          height: 24.h,
          width: 24.h,
          fit: BoxFit.contain,
        ),
      ),
      suffixConstraints: BoxConstraints(maxHeight: 48.h),
      obscureText: true,
      contentPadding: EdgeInsets.fromLTRB(16.h, 10.h, 20.h, 10.h),
      borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Password", style: CustomTextStyles.bodySmallPoppinsBlueGray400),
          _buildPasswordInput(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      height: 56.h,
      text: "Login",
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      buttonStyle: CustomButtonStyles.fillCyan,
      buttonTextStyle: CustomTextStyles.titleMediumPoppinsOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildForgotPasswordButton(BuildContext context) {
    return CustomElevatedButton(
      height: 36.h,
      text: "forgot password",
      margin: EdgeInsets.only(left: 50.h, right: 50.h),
      buttonStyle: CustomButtonStyles.fillRed,
      buttonTextStyle: CustomTextStyles.labelLargePoppinsOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildAlternativeSigninOptions(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h, right: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: Divider(),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Or Sign In With",
              style: CustomTextStyles.bodySmallPoppinsBlueGray400,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: Divider(),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogleSignInButton(BuildContext context) {
    return CustomElevatedButton(
      height: 48.h,
      width: 154.h,
      text: "Google",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle,
          height: 16.h,
          width: 16.h,
          fit: BoxFit.contain,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.bodyMediumPoppinsPrimaryContainer,
    );
  }
}
