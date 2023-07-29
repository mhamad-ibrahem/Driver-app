import '../../../../Global/Core/Class/Crud.dart';
import '../../../Core/Constant/ApiLinks.dart';
import '../../sign_up/model/SignUpModel.dart';

class SignUpData {
  Crud crud;
  SignUpData(this.crud);

  signUp(SignUpModel model) async {
    var response = await crud.postData(AppLinks.serverLink, model.toJson(), {});
    return response.fold((l) => l, (r) => r);
  }
}
//"Accept": "application/json", "Authorization": 'Bearer $token'