import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:driver_app/Local/Core/Constant/Images.dart';
import 'package:driver_app/Local/modules/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Custom/profile_list_tile.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  ProfileController controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.lPurple,
              backgroundImage: AssetImage(AppImages.profile2),
              // backgroundImage: AssetImage(controller.profileModel.image),
              maxRadius: 70,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Mohamad",
              // controller.profileModel.name,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "0966554422",
              // controller.profileModel.phone,
              style: Theme.of(context).textTheme.headline2,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                ProfileListTile(
                  icon: Icons.mode_edit_rounded,
                  title: "Edit Profile",
                  onTap: () {
                    controller.goToEditProfile();
                  },
                ),
                ProfileListTile(
                  icon: Icons.settings,
                  title: "Settings",
                  onTap: () {
                    controller.goToSettings();
                  },
                ),
                ProfileListTile(
                  icon: Icons.help_outline_outlined,
                  title: "Help Center",
                  onTap: () {
                    controller.goToHelpCenter();
                  },
                ),
                ProfileListTile(
                  icon: Icons.exit_to_app,
                  title: "Log Out",
                  onTap: () {
                    controller.logOut();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
