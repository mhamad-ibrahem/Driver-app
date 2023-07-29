import 'package:driver_app/Local/modules/home/model/home_model.dart';

import '../../../../Global/Core/Class/Crud.dart';
import '../../../Core/Constant/ApiLinks.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);
  getData() async {
    var response = await crud.postData(AppLinks.loginLink, {}, {});
    return response.fold((l) => l, (r) => r);
  }
}
