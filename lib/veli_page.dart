import 'package:get/get.dart';
import 'package:veli_flutter/veli_navigation.dart';
import 'package:veli_flutter/view/description_view/description_view.dart';
import 'package:veli_flutter/view/profile_view/views/profile_view.dart';
import 'view/setting_view/update_password.dart';
import 'view/profile_view/views/add_school_view.dart';
import 'view/setting_view/setting_view.dart';

class VeliPage {
  static final pages = [
    GetPage(
        name: VeliNavigation.descriptionView, page: () => const ProfileView()),
  ];
}
