import 'package:driver_app/Global/Core/Constant/Colors.dart';
import 'package:driver_app/Global/Core/Constant/Size.dart';
import 'package:driver_app/Local/Core/Constant/TextStyles.dart';
import 'package:driver_app/Local/Shared/order_dialog.dart';
import 'package:driver_app/Local/Widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/Constant/Colors.dart';
import '../../../Widget/CustomAppScaffold.dart';
import 'custom/order_details_container.dart';
import 'custom/orders_body.dart';
import 'custom/top_page.dart';

class OrderDetils extends StatelessWidget {
  const OrderDetils({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppScaffold(
      isBack: true,
      pageTitle: "Orders",
      isScroll: false,
      // color: GlobalColors.white,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopPageOrders(),
          const OrderDetailsContainer(),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: 12,
              itemBuilder: (context, index) => const OrdersBody(),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
            ),
          ),
          Center(
            child: CustomButton(
                buttonBody: "Continue",
                onTap: () {
                  openOrderDialog("Mhamad", () {}, context);
                },
                buttonWidth: AppSize.screenWidth * 0.8),
          )
        ],
      ),
    );
  }
}
