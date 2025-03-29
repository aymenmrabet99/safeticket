import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppNavigationsScreen extends StatelessWidget {
  const AppNavigationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Text(
                        "App Navigation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 20.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "Check your app's UI from the below demo screens of your app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF888888),
                          fontSize: 16.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(
                      height: 1.h,
                      thickness: 1.h,
                      color: Color(0XFF000000),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "FPOTP",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.fpotpScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "successignup",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.successignupScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "start",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.startScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.loginScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Signup",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.signupScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FP1",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.fp1Screen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FPOTP One",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.fpotpOneScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FPpw",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.fppwScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "successignup One",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.successignupOneScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.homeScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "notification",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.notificationScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "search",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.searchScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "searchresult",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.searchresultScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sortedfiltre",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.sortedfiltreScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ticket",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.ticketScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "myticket",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.myticketScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "profile",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.profileScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "setting",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.settingScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "eventinfo",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.eventinfoScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "booking",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.bookingScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "payement",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.payementScreen,
                              ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "succespayment",
                          onTapScreenTitle:
                              () => onTapScreenTitle(
                                context,
                                AppRoutes.succespaymentcreen,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(height: 1.h, thickness: 1.h, color: Color(0XFF888888)),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
