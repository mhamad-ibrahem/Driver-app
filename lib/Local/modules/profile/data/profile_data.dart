import 'package:driver_app/Global/Core/Class/Crud.dart';
import 'package:driver_app/Local/Core/Constant/ApiLinks.dart';

class ProfileData {
  Crud crud;
  ProfileData(this.crud);
  getProfileData() async {
    var response = await crud.getData(AppLinks.loginLink, {});
    return response.fold((l) => l, (r) => r);
  }
}
