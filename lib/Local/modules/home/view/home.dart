import 'package:driver_app/Global/Core/Class/HandilingData.dart';
import 'package:driver_app/Local/modules/accepted_order/view/accepted_orders.dart';
import 'package:driver_app/Local/modules/completed_order/view/completed_orders.dart';
import 'package:driver_app/Local/modules/home/controller/home_controller.dart';
import 'package:driver_app/Local/modules/pending_order/view/custom/pending_orders.dart';
import 'package:driver_app/Local/modules/rejected_order/view/custom/rejected_orders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom/tap.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  HomeController controller = Get.put(HomeController());
  late TabController tabController;
  int currentIndex = 0;
  final List<Widget> _children = [
    PendingOrders(),
    AcceptedOrders(),
    RejectedOrders(),
    CompletedOrders(),
  ];
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: currentIndex,
      length: _children.length,
      vsync: this,
    );
    tabController.addListener(() {
      currentIndex = tabController.index;
      if (mounted) setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GetBuilder<HomeController>(
        builder: (controller) => HandilingDataView(
          statusRequest: controller.statusRequest,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              HomeTap(
                  index: currentIndex,
                  tabController: tabController,
                  onTap: (val) {
                    setState(() {
                      currentIndex = val;
                    });
                  }),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: tabController,
                    children: _children,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
