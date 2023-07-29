import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

openEditBottomSheet(BuildContext context, void Function()? fromGalery,
    void Function()? fromCamera) {
  Get.bottomSheet(
    // backgroundColor: Theme.of(context).primaryColor,
    Container(
      padding: const EdgeInsets.all(20),
      height: 140,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
      child: Column(
        children: [
          Text(
            "Choose Image",
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: fromGalery,
                  child: Text(
                    "From Galery",
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: AppColors.primary),
                  )),
              TextButton(
                  onPressed: fromCamera,
                  child: Text(
                    "From Camera",
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: AppColors.primary),
                  )),
            ],
          )
        ],
      ),
    ),
  );
}
