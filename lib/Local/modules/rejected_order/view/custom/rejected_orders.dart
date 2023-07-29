import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/Routes.dart';
import '../../../../Shared/order.dart';
import '../../../home/controller/home_controller.dart';

class RejectedOrders extends StatelessWidget {
  RejectedOrders({super.key});
  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Expanded(
              child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            // itemCount: controller.ordersList.length,
            itemCount: 12,
            itemBuilder: (context, index) => Order(
              // homeModel: controller.ordersList[index],
              onTap: () {
                Get.toNamed(AppRoute.orderDetails);
              },
              state: 'reject',
            ),
            separatorBuilder: (context, index) => const Divider(
              color: AppColors.grey,
              thickness: 1.2,
            ),
          )),
        ],
      ),
    );
  }
}
