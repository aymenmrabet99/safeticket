import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/booking_screen/booking_screen.dart';
import '../presentation/eventinfo_screen/eventinfo_screen.dart';
import '../presentation/fpl_screen/fpl_screen.dart';
import '../presentation/fpotp_one_screen/fpotp_one_screen.dart';
import '../presentation/fpotp_screen/fpotp_screen.dart';
import '../presentation/fppw_screen/fppw_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/myticket_screen/myticket_screen.dart';
import '../presentation/notification_screen/notification_screen.dart';
import '../presentation/payment_screen/payment_screen.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/search_screen/search_screen.dart';
import '../presentation/search/servlet_screen/search/servlet_screen.dart';
import '../presentation/setting_screen/setting_screen.dart';
import '../presentation/signup_screen/signup_screen.dart';
import '../presentation/sortedfiltre_screen/sortedfiltre_screen.dart';
import '../presentation/start_screen/start_screen.dart';
import '../presentation/succespayment_screen/succespayment_screen.dart';
import '../presentation/successignup_one_screen/successignup_one_screen.dart';
import '../presentation/successignup_screen/successignup_screen.dart';
import '../presentation/ticket_screen/ticket_screen.dart';
import '../presentation/fnl_screen/fnl_screen.dart'; // Add missing imports
import '../presentation/fpmd_screen/fpmd_screen.dart';
import '../presentation/searchresult_screen/searchresult_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String fpotpScreen = '/fpotp_screen';
  static const String successignupScreen = '/successignup_screen';
  static const String startScreen = '/start_screen';
  static const String loginScreen = '/login_screen';
  static const String signupScreen = '/signup_screen';
  static const String fpiScreen = '/fpi_screen';
  static const String fpotpOneScreen = '/fpotp_one_screen';
  static const String fppwScreen = '/fppw_screen';
  static const String successignupOneScreen = '/successignup_one_screen';
  static const String homeScreen = '/home_screen';
  static const String homeInitialPage = '/home_initial_page';
  static const String notificationScreen = '/notification_screen';
  static const String searchScreen = '/search_screen';
  static const String searchresultScreen = '/searchresult_screen';
  static const String sortedfiltreScreen = '/sortedfiltre_screen';
  static const String ticketScreen = '/ticket_screen';
  static const String myticketScreen = '/myticket_screen';
  static const String profileScreen = '/profile_screen';
  static const String settingScreen = '/setting_screen';
  static const String eventInfoScreen = '/eventinfo_screen';
  static const String bookingScreen = '/booking_screen';
  static const String paymentScreen = '/payment_screen';
  static const String successpaymentScreen = '/successpayment_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/start_screen'; // Match the initial route

  static Map<String, WidgetBuilder> routes = {
    fpotpScreen: (context) => FpotpScreen(),
    successignupScreen: (context) => SuccessignupScreen(),
    startScreen: (context) => StartScreen(),
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    fpiScreen: (context) => FplScreen(), // Corrected to FplScreen
    fpotpOneScreen: (context) => FpotpOneScreen(),
    fppwScreen: (context) => FppwScreen(),
    successignupOneScreen: (context) => SuccessignupOneScreen(),
    homeScreen: (context) => HomeScreen(),
    notificationScreen: (context) => NotificationScreen(),
    searchScreen: (context) => SearchScreen(),
    searchresultScreen: (context) => SearchresultScreen(),
    sortedfiltreScreen: (context) => SortedfiltreScreen(),
    ticketScreen: (context) => TicketScreen(),
    myticketScreen: (context) => MyticketScreen(),
    profileScreen: (context) => ProfileScreen(),
    settingScreen: (context) => SettingScreen(),
    eventInfoScreen: (context) => EventinfoScreen(),
    bookingScreen: (context) => BookingScreen(),
    paymentScreen: (context) => PaymentScreen(),
    successpaymentScreen: (context) => SuccesspaymentScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
  };
}
