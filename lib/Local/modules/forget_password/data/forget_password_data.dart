import 'package:driver_app/Local/modules/forget_password/model/forget_password_model.dart';

import '../../../../Global/Core/Class/Crud.dart';
import '../../../Core/Constant/ApiLinks.dart';

class ForgetPasswordData {
  Crud crud;
  ForgetPasswordData(this.crud);

  ForgetPassword(ForgetPasswordModel model) async {
    var response = await crud.postData(AppLinks.serverLink, model.toJson(), {});
    return response.fold((l) => l, (r) => r);
  }
}
