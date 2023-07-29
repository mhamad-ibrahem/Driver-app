import 'package:driver_app/Local/modules/email_sending/model/CheckEmialModel.dart';

import '../../../../Global/Core/Class/Crud.dart';
import '../../../Core/Constant/ApiLinks.dart';
import '../../sign_up/model/SignUpModel.dart';

class CheckEmailData {
  Crud crud;
  CheckEmailData(this.crud);

  checkEmail(CheckEmialModel model) async {
    var response = await crud.postData(AppLinks.serverLink, model.toJson(), {});
    return response.fold((l) => l, (r) => r);
  }
}
