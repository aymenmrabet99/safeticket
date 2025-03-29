import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_buttom_bar.dart';
import 'widgets/booking_three_item_widget.dart';

// ignore_for_file: must_be_immutable
class BookingScreen extends StatelessWidget {
  BookingScreen({super.key});

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 22.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPlanStadiumBilletterieV2,
                        height: 184.h,
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(horizontal: 44.h),
                      ),
                      SizedBox(height: 16.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "pick ticket",
                            style: CustomTextStyles.titleMediumMedium,
                          ),
                        ),
                      ),
                      SizedBox(height: 6.h),
                      _buildStadiumBookingColumn(context),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 34.h, right: 34.h, bottom: 12.h),
        child: _buildBottombar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      loadingWidth: 42.h,
      loading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSigne11,
        height: 24.h,
        width: 24.h,
        margin: EdgeInsets.only(left: 18.h),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(text: "booking"),
    );
  }

  /// Section Widget
  Widget _buildStadiumBookingColumn(BuildContext context) {
    return Container(
      height: 376.h,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 12.h),
      decoration: AppDecoration.outlineBlack9004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: ListView.separated(
                padding: EdgeInsets.zero,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 6.h);
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return BookingThreeItemWidget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
            navigatorKey.currentContext!,
            getCurrentRoute(type),
          );
        },
      ),
    );
  }

  /// Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Accueill:
        return AppRoutes.homeInitialPage;
      case BottomBarEnum.Symboledelinterfacederecherche2:
        return "/";
      case BottomBarEnum.Billetsdavioni:
        return "/";
      case BottomBarEnum.Utilisateur1:
        return "/";
      default:
        return "/";
    }
  }
}
