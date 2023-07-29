import 'package:driver_app/Local/modules/change_password/model/change_password_model.dart';

import '../../../../Global/Core/Class/Crud.dart';
import '../../../Core/Constant/ApiLinks.dart';

class ChangePasswordData {
  Crud crud;
  ChangePasswordData(this.crud);

  changePassword(ChangePasswordModel model) async {
    var response = await crud.postData(AppLinks.serverLink, model.toJson(), {});
    return response.fold((l) => l, (r) => r);
  }
}
