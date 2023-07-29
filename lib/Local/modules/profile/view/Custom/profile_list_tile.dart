import 'package:flutter/material.dart';

import '../../../../Core/Constant/Colors.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});
  final String title;
  final IconData icon;

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            leading: Icon(
              icon,
              color: AppColors.primary,
            ),
            title: Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            ),
            trailing: const Icon(
              Icons.arrow_forward,
              color: AppColors.dPurple,
            ),
            onTap: onTap),
        const Divider(
          thickness: 1.2,
          color: AppColors.grey,
        )
      ],
    );
  }
}
