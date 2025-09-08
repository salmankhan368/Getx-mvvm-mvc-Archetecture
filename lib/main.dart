import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:project_getx_mvc_mvvm/Rosources/Routes/routes.dart';
import 'package:project_getx_mvc_mvvm/Rosources/getx_localization/languges.dart';
import 'package:project_getx_mvc_mvvm/View/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      home: SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
