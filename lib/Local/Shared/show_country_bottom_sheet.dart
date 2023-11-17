import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import '../Core/Constant/Colors.dart';
import '../Core/Functions/show_country_picker.dart';

class CustomCountryPicker extends StatelessWidget {
  const CustomCountryPicker(
      {super.key, required this.onSelect, required this.countryCode});
  final void Function(Country) onSelect;
  final String countryCode;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: EdgeInsets.zero,
      minWidth: 0,
      onPressed: () {
        ///todo
        showCountries(context, onSelect);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ///todo
          const Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.deepGrey,
          ),
          // Image.asset(
          //   controller.countryFlag.value,
          //   height: 20,
          // ),
          // controller.firstCountryFlag.isNotEmpty
          //     ? Image.network(
          //         controller.firstCountryFlag.value,
          //         height: 20,
          //       )
          //     : controller.countryFlag.value.contains('uae')
          //         ? Image.asset(
          //             controller.countryFlag.value,
          //             height: 20,
          //           )
          //         : Text(
          //             controller.countryFlag.value,
          //           ),
          const SizedBox(width: 5),
          Text(
            '+$countryCode',
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: AppColors.deepGrey),
          ),
          const SizedBox(width: 5),

          const SizedBox(
            height: 30,
            child: VerticalDivider(
              width: 1,
              thickness: 1,
              indent: 3.4,
              endIndent: 3.4,
              color: AppColors.deepGrey,
            ),
          ),
          const SizedBox(
            width: 8,
          )
        ],
      ),
    );
  }
}
