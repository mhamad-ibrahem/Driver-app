import '../../../../Global/Core/Class/Crud.dart';
import '../../../Core/Constant/ApiLinks.dart';
import '../model/SignInModel.dart';

class SignInData {
  Crud crud;
  SignInData(this.crud);

  signIn(SignInModel model) async {
    var response = await crud.postData(AppLinks.loginLink, model.toJson(), {});
    return response.fold((l) => l, (r) => r);
  }

}
