import 'package:flutter/material.dart';
import '../core/app_export.dart';

// Define ImageConstant if it doesn't exist
class ImageConstant {
  static const String imgAccueill = 'assets/images/accueill.png';
  static const String imgSymboledelinterfacederecherche2 =
      'assets/images/symboledelinterfacederecherche2.png';
  static const String imgBilletsdavion1 = 'assets/images/billetsdavion1.png';
  static const String imgUtillsateur1 = 'assets/images/utillsateur1.png';
}

enum BottomBarEnum {
  accueill,
  symboledelinterfacederecherche2,
  billetsdavion1,
  utilisateur1,
}

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({
    super.key,
    this.onChanged,
  }); // Added const and super.key

  final Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgAccueill,
      activeIcon: ImageConstant.imgAccueill,
      type: BottomBarEnum.accueill,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSymboledelinterfacederecherche2,
      activeIcon: ImageConstant.imgSymboledelinterfacederecherche2,
      type: BottomBarEnum.symboledelinterfacederecherche2,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBilletsdavion1,
      activeIcon: ImageConstant.imgBilletsdavion1,
      type: BottomBarEnum.billetsdavion1,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUtillsateur1,
      activeIcon: ImageConstant.imgUtillsateur1,
      type: BottomBarEnum.utilisateur1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 34.h, right: 34.h, bottom: 10.h),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Image.asset(
              bottomMenuList[index].icon,
              height: 28.h,
              width: 30.h,
            ),
            activeIcon: Image.asset(
              bottomMenuList[index].activeIcon,
              height: 28.h,
              width: 30.h,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  final String icon;
  final String activeIcon;
  final BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({super.key}); // Added super.key

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
