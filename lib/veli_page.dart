import 'package:get/get.dart';
import 'package:veli_flutter/veli_navigation.dart';
import 'package:veli_flutter/view/description_view/description_view.dart';

class VeliPage {
  static final pages = [
    GetPage(
      name: VeliNavigation.descriptionView,
      page: () => const DescriptionView(),
    )
  ];
}
