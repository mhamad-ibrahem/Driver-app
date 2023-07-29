import '../../../../Global/Core/Class/Crud.dart';
import '../../../Core/Constant/ApiLinks.dart';
import '../model/edit_profile_controller.dart';

class EditProfileData {
  Crud crud;
  EditProfileData(this.crud);
  updatProfile(EditProfileModel model) async {
    var response = await crud.postData(AppLinks.loginLink, model.toJson(), {});
    return response.fold((l) => l, (r) => r);
  }
}
