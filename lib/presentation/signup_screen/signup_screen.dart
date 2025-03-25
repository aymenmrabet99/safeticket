import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  TextEditingController nameInputController = TextEditingController();
  TextEditingController birthdayInputController = TextEditingController();
  TextEditingController addressInputController = TextEditingController();
  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('216');
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController cinInputController = TextEditingController();
  TextEditingController emailInputController = TextEditingController();
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
              height: SizeUtils.height,
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 75.h),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildAppbar(context),
                  ),
                  Text("Create Account", style: theme.textTheme.headlineMedium),
                  SizedBox(height: 2.h),
                  Text(
                    "Fill your information below or register\nwith your social account",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargePoppinsOnPrimaryContainer,
                  ),
                  SizedBox(height: 16.h),
                  _buildNameInput(context),
                  SizedBox(height: 16.h),
                  _buildBirthdayInput(context),
                  SizedBox(height: 8.h),
                  _buildAddressInput(context),
                  SizedBox(height: 12.h),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 32.h, right: 38.h),
                    child: _buildPhoneNumber(context),
                  ),
                  SizedBox(height: 8.h),
                  _buildCityInput(context),
                  SizedBox(height: 18.h),
                  _buildEmailInput(context),
                  SizedBox(height: 18.h),
                  _buildPasswordInput(context),
                  SizedBox(height: 36.h),
                  _buildSignupButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 16.h,
      loadingWidth: 36.h,
      loading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        height: 16.h,
        width: 12.h,
        margin: EdgeInsets.only(left: 24.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.h, right: 38.h),
      child: CustomFloatingTextField(
        controller: nameInputController,
        labelText: "Name",
        labelStyle: theme.textTheme.titleSmall,
        hintText: "Name",
        contentPadding: EdgeInsets.fromLTRB(12.h, 16.h, 12.h, 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildBirthdayInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 28.h, right: 42.h),
      child: CustomTextFormField(
        controller: birthdayInputController,
        hintText: "Birthday",
        hintStyle: CustomTextStyles.labelLargeBluegray90001,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(15.h, 18.h, 20.h, 18.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgHarukiIcons,
            height: 16.h,
            width: 24.h,
            fit: BoxFit.contain,
          ),
        ),
        suffixConstraints: BoxConstraints(maxHeight: 52.h),
        contentPadding: EdgeInsets.fromLTRB(16.h, 18.h, 20.h, 18.h),
        borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.h, right: 38.h),
      child: CustomFloatingTextField(
        controller: addressInputController,
        labelText: "Address",
        labelStyle: theme.textTheme.titleSmall,
        hintText: "Address",
        contentPadding: EdgeInsets.fromLTRB(12.h, 16.h, 32.h, 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 32.h, right: 38.h),
      child: CustomPhoneNumber(
        country: selectedCountry,
        controller: phoneNumberController,
        onTap: (Country value) {
          selectedCountry = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCityInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.h, right: 38.h),
      child: CustomFloatingTextField(
        controller: cinInputController,
        labelText: "City",
        labelStyle: theme.textTheme.titleSmall,
        hintText: "City",
        contentPadding: EdgeInsets.fromLTRB(12.h, 16.h, 32.h, 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 28.h, right: 42.h),
      child: CustomFloatingTextField(
        controller: emailInputController,
        labelText: "E-mail",
        labelStyle: theme.textTheme.titleSmall,
        hintText: "E-mail",
        contentPadding: EdgeInsets.fromLTRB(12.h, 16.h, 32.h, 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.h, right: 38.h),
      child: CustomFloatingTextField(
        controller: passwordInputController,
        labelText: "password",
        labelStyle: theme.textTheme.titleSmall,
        hintText: "password",
        textInputAction: TextInputAction.done,
        obscureText: true,
        contentPadding: EdgeInsets.fromLTRB(12.h, 16.h, 32.h, 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignupButton(BuildContext context) {
    return CustomElevatedButton(
      height: 56.h,
      text: "Signup",
      margin: EdgeInsets.only(left: 26.h, right: 38.h),
      buttonStyle: CustomButtonStyles.fillBlack,
      buttonTextStyle: CustomTextStyles.titleSmallOnErrorContainer,
    );
  }
}
