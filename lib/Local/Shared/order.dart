import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:driver_app/Local/Core/Constant/Images.dart';
import 'package:driver_app/Local/Core/Constant/TextStyles.dart';

import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  Order({
    super.key,
    this.onTap,
    required this.state,
    //  required this.homeModel
  });
  final void Function()? onTap;
  final String state;
  // final HomeModel homeModel;
  // HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: CircleAvatar(
              maxRadius: 35,
              backgroundColor: AppColors.lPurple,
              backgroundImage: AssetImage(AppImages.profile2),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // homeModel.clientModel.name,
                    "Ali",
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tartous/Syria",
                          // homeModel.clientModel.location,
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(fontSize: 13)),
                      state == 'pending'
                          ? Text(
                              "500\$",
                              style: purpleTextStyle(false).copyWith(
                                fontSize: 18,
                              ),
                            )
                          : state == 'accept'
                              ? Row(
                                  children: [
                                    const Icon(
                                      Icons.timer,
                                      color: AppColors.primary,
                                    ),
                                    Text("4 minute left",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2!
                                            .copyWith(fontSize: 13)),
                                  ],
                                )
                              : state == 'reject'
                                  ? const SizedBox(
                                      height: 20,
                                    )
                                  : Text('500\$',
                                      // "${homeModel.clientModel.orderPrice}\$",
                                      style: purpleTextStyle(false).copyWith(
                                          fontSize: 13,
                                          decoration:
                                              TextDecoration.lineThrough)),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
