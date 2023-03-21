import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/veli_navigation.dart';
import 'package:veli_flutter/veli_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: VeliNavigation.addPostView,
      getPages: VeliPage.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
