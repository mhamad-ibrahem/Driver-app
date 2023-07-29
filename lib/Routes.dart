import 'package:driver_app/Local/modules/change_password/view/change_password.dart';
import 'package:driver_app/Local/modules/chat_details/view/chat.dart';
import 'package:driver_app/Local/modules/email_sending/view/email_sending.dart';
import 'package:driver_app/Local/modules/home/view/home.dart';
import 'package:driver_app/Local/modules/profile/view/profile.dart';
import 'package:driver_app/Local/modules/sign_in/binding/sign_in_binding.dart';
import 'package:driver_app/Local/modules/verifay/view/verifay.dart';
import 'package:driver_app/Local/modules/sign_up/view/sign_up.dart';
import 'package:driver_app/Local/modules/main/view/main.dart';
import 'package:driver_app/Local/modules/help_center/view/help_center.dart';
import 'package:driver_app/Local/modules/settings/view/settings.dart';
import 'package:driver_app/Local/modules/complete_order/view/complete_order.dart';
import 'package:driver_app/Local/modules/order_details/view/order_details.dart';
import 'package:driver_app/Local/modules/welcom/view/welcom.dart';
import 'package:get/get.dart';
import 'Global/Core/Middleware/Middleware.dart';
import 'Local/Core/Constant/Routes.dart';
import 'Local/modules/change_password/binding/change_password_binding.dart';
import 'Local/modules/chat/binding/chat_binding.dart';
import 'Local/modules/chat/view/chat.dart';
import 'Local/modules/chat_details/binding/chat_binding.dart';
import 'Local/modules/edit_profile/binding/edit_profile_binding.dart';
import 'Local/modules/email_sending/binding/email_sending_binding.dart';
import 'Local/modules/help_center/binding/help_center_binding.dart';
import 'Local/modules/home/binding/home_binding.dart';
import 'Local/modules/main/binding/main_bindings.dart';
import 'Local/modules/notification/binding/notifiacation_binding.dart';
import 'Local/modules/profile/binding/profile_binding.dart';
import 'Local/modules/settings/binding/settings_binding.dart';
import 'Local/modules/sign_in/view/sign_in.dart';
import 'Local/modules/edit_profile/view/edit_profile.dart';
import 'package:driver_app/Local/modules/map/view/custom/map.dart';
import 'Local/modules/map/binding/map_binding.dart';
import 'Local/modules/notification/view/notifications.dart';
import 'Local/modules/order_details/binding/order_details_binding.dart';
import 'Local/modules/verifay/binding/verifay_binding.dart';

List<GetPage<dynamic>>? routes = [
  //============WELCOM===================
  GetPage(
      name: AppRoute.welcom,
      page: () => Welcom(),
      // middlewares: [MiddleWare()],
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
// //=====================AUTH=====================
  GetPage(
      name: AppRoute.signIn,
      page: () => SignIn(),
      binding: SignInBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.signUp,
      page: () => SignUp(),
      binding: SignInBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.emailSending,
      page: () => EmailSending(),
      binding: EmailSendingBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.verifay,
      page: () => Verifay(),
      transition: Transition.fade,
      binding: VerifayBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.changePassword,
      page: () => ChangePassword(),
      binding: ChangePasswordBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),

  //=================Main==========
  GetPage(
      name: AppRoute.main,
      page: () => Main(),
      binding: MainBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.notificatios,
      page: () => const Notifications(),
      binding: NotificationBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.home,
      page: () => Home(),
      binding: HomeBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.chatDetails,
      page: () => ChatDetails(),
      binding: ChatDetailsBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.chat,
      page: () => Chat(),
      binding: ChatBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.profile,
      page: () => Profile(),
      binding: ProfileBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),

  //==================ORDER====================

  GetPage(
      name: AppRoute.map,
      page: () => Map(),
      binding: MapBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),

  GetPage(
      name: AppRoute.completeOrder,
      page: () => const CompleteOrder(),
      // binding: ChangePasswordBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.orderDetails,
      page: () => const OrderDetils(),
      binding: OrderDetailsBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),

  //=============PROFILE==============
  GetPage(
      name: AppRoute.helpCenter,
      page: () => HelpCenter(),
      binding: HelpCenterBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.settings,
      page: () => Settings(),
      binding: SettingsBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.editeProfile,
      page: () => EditeProfile(),
      binding: EditeProfileBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
];
