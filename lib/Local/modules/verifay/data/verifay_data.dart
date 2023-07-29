import 'package:driver_app/Local/modules/verifay/model/verifay_model.dart';

import '../../../../Global/Core/Class/Crud.dart';
import '../../../Core/Constant/ApiLinks.dart';

class VerifayData {
  Crud crud;
  VerifayData(this.crud);

  checkVerifay(VerifayModel model) async {
    var response = await crud.postData(AppLinks.loginLink, model.toJson(), {});
    return response.fold((l) => l, (r) => r);
  }

  resendCode(String phone) async {
    var response = await crud.postData(AppLinks.loginLink, {
      'phone': phone,
    }, {});
    return response.fold((l) => l, (r) => r);
  }
}
