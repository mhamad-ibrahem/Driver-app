import 'package:country_picker/country_picker.dart';
import 'package:driver_app/Global/Core/Constant/Colors.dart';
import 'package:flutter/material.dart';

import '../Constant/Colors.dart';

showCountries(BuildContext context, void Function(Country) onSelect) {
  return showCountryPicker(
    context: context,

    // countryFilter: <String>['AE', 'KW','OM'],
    countryListTheme: CountryListThemeData(
      flagSize: 25,
      searchTextStyle: Theme.of(context)
          .textTheme
          .headline3!
          .copyWith(color: GlobalColors.black),
      textStyle: Theme.of(context)
          .textTheme
          .headline3!
          .copyWith(color: AppColors.deepGrey),
      bottomSheetHeight: 500,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      inputDecoration: InputDecoration(
        labelText: 'Search',
        hintText: 'Start typing to search',
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary, width: 2)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.deepGrey)),
        labelStyle: Theme.of(context)
            .textTheme
            .headline2!
            .copyWith(fontWeight: FontWeight.w600, fontSize: 16),
        prefixIcon: const Icon(
          Icons.search,
          color: AppColors.grey,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xFF8C98A8).withOpacity(0.2),
          ),
        ),
      ),
    ),
    showPhoneCode: true,
    onSelect: onSelect,
  );
}
