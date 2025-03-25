import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '/theme/custom_button_style.dart';
import '/widgets/custom_elevated_button.dart';

class BookingThreeItemWidget extends StatelessWidget {
  const BookingThreeItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(right: 30.h),
              padding: EdgeInsets.only(
                left: 10.h,
              ), // Fixed: Changed 'pading' to 'padding'
              decoration: BoxDecoration(
                // Fixed: Changed 'decoration' to 'BoxDecoration'
                borderRadius: BorderRadiusStyle.roundedBorder18,
                border:
                    AppDecoration
                        .outlineBlack9006, // Assuming 'outlineBlack9006' is a Border
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "North stand",
                    style: CustomTextStyles.titleMediumMedium,
                  ),
                  Text(
                    "price do not include handling fees, taxes and services",
                    style: CustomTextStyles.bodySmall10,
                  ),
                  SizedBox(height: 20.h),
                  _buildNorthStandSeatButton(context),
                ],
              ),
            ),
          ),
          _buildImageAndPriceSection(
            context,
          ), // Added: Moved the second Container into a separate widget
        ],
      ),
    );
  }

  /// Section Widget for Image and Price Button
  Widget _buildImageAndPriceSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(bottom: 4.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEntrer1,
            height: 24.h,
            width: 26.h,
          ),
          _buildNorthStandPriceButton(context),
        ],
      ),
    );
  }

  /// Section Widget for North Stand Seat Button
  Widget _buildNorthStandSeatButton(BuildContext context) {
    return CustomElevatedButton(
      height: 24.h,
      width: 70.h,
      text: "100 seat",
      buttonStyle: CustomButtonStyles.outlineBlackTL10,
      buttonTextStyle:
          CustomTextStyles
              .labelMediumTeal500, // Ensure this exists in CustomTextStyles
    );
  }

  /// Section Widget for North Stand Price Button
  Widget _buildNorthStandPriceButton(BuildContext context) {
    return CustomElevatedButton(
      height: 24.h,
      width: 50.h,
      text: "25 DT",
      margin: EdgeInsets.only(right: 16.h),
      buttonTextStyle:
          CustomTextStyles
              .labelMediumOnPrimaryContainer, // Ensure this exists in CustomTextStyles
    );
  }
}
