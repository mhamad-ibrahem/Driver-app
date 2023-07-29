import 'package:driver_app/Local/modules/order_details/controller/oredr_details_controller.dart';
import 'package:get/get.dart';

class OrderDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OrderDetailsController());
  }
}
