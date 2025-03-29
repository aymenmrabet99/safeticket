import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../core/app_export.dart';

// ignore_for_file: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    super.key,
    required this.country,
    required this.onTap,
    required this.controller,
  });

  Country country;
  Function(Country) onTap;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadius.circular(24.h),
        border: Border.all(color: appTheme.blueGray100, width: 1.h),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () => openCountryPicker(context),
            child: Padding(
              padding: EdgeInsets.only(bottom: 6.h),
              child: Text(
                "+${country.phoneCode}",
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 218.h,
              child: TextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.all(12.h),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDialogItem(Country country) => Row(
    children: <Widget>[
      CountryPickerUtils.getDefaultFlagImage(country),
      Container(
        margin: EdgeInsets.only(left: 10.h),
        width: 60.h,
        child: Text(
          "+${country.phoneCode}",
          style: TextStyle(fontSize: 14.fSize),
        ),
      ),
      const SizedBox(width: 8.0),
      Flexible(child: Text(country.name, style: TextStyle(fontSize: 14.fSize))),
    ],
  );

  void openCountryPicker(BuildContext context) => showDialog(
    context: context,
    builder:
        (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text(
            'Select your phone code',
            style: TextStyle(fontSize: 14.fSize),
          ),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: buildDialogItem,
        ),
  );
}
