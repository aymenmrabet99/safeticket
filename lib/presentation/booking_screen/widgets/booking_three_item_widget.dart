import 'package:flutter/material.dart';
import 'package:safeticket/core/app_export.dart';
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
              padding: EdgeInsets.only(left: 10.h),
              decoration: AppDecoration.outlineBlack9006.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder18,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "North stand",
                    style: CustomTextStyles.titleMediumMedium,
                  ),
                  Text(
                    "Price do not include handling fees, taxes and services",
                    style: CustomTextStyles.bodySmall10,
                  ),
                  SizedBox(height: 20.h),
                  _buildNorthStandSeatButton(context),
                ],
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(bottom: 4.h),
            child: Column(
              spacing: 14,
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
          ),
        ],
      ),
    );
  }
}

/// Section Widget
Widget _buildNorthStandSeatButton(BuildContext context) {
  return CustomElevatedButton(
    height: 24.h,
    width: 70.h,
    text: "100 seat",
    buttonStyle: CustomButtonStyles.outlineBlackTl10,
    buttonTextStyle: CustomTextStyles.labelMediumTeal500,
  );
}

/// Section Widget
Widget _buildNorthStandPriceButton(BuildContext context) {
  return CustomElevatedButton(
    height: 24.h,
    width: 50.h,
    text: "25 DT",
    margin: EdgeInsets.only(right: 16.h),
    buttonTextStyle: CustomTextStyles.labelMediumOnPrimaryContainer,
  );
}
