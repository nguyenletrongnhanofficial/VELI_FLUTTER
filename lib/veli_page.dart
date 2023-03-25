import 'package:get/get.dart';
import 'package:veli_flutter/veli_navigation.dart';
import 'package:veli_flutter/view/add_post_view/add_post_view.dart';
import 'package:veli_flutter/view/description_view/description_view.dart';
import 'package:veli_flutter/view/filter_view/filter_view.dart';
import 'package:veli_flutter/view/profile_view/views/profile_view.dart';

class VeliPage {
  static final pages = [
    GetPage(
      name: VeliNavigation.descriptionView,
      page: () => const DescriptionView(),
    ),
    GetPage(
      name: VeliNavigation.profileView,
      page: () => const ProfileView(),
    ),
    GetPage(
      name: VeliNavigation.addPostView,
      page: () => const AddPostView(),
    ),
    GetPage(
      name: VeliNavigation.filterView,
      page: () => const FilterView(),
    ),
  ];
}
