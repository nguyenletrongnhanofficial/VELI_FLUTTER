import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:veli_flutter/model/save_model.dart';
import 'package:veli_flutter/veli_navigation.dart';
import 'package:veli_flutter/veli_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SaveModel(),
      builder: (context, child) => GetMaterialApp(
      initialRoute: VeliNavigation.saveView,
      getPages: VeliPage.pages,
      debugShowCheckedModeBanner: false,
    ),
    );
  }
}
