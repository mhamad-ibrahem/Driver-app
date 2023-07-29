import 'package:driver_app/Local/modules/home/data/home_data.dart';
import 'package:get/get.dart';
import '../../../../Global/Core/Class/StatusRequest.dart';
import '../../../../Global/Core/Functions/handilingData.dart';
import '../model/home_model.dart';

class HomeController extends GetxController {
  StatusRequest statusRequest = StatusRequest.none;
  HomeData homeData = HomeData(Get.find());
  List<HomeModel> ordersList = [];
  @override
  void onInit() {
    // getData();
    super.onInit();
  }

  getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await homeData.getData();
    statusRequest = handilingData(response);
    print(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == 'success') {
        List homeResponseList = response['data'];
        ordersList.addAll(homeResponseList.map((e) => HomeModel.fromJson(e)));
        print(ordersList.length);
      } else {
        statusRequest = StatusRequest.faliure;
      }
    }
    update();
  }
}
