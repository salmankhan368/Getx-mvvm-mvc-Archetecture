import 'dart:async';

import 'package:get/get.dart';
import 'package:project_getx_mvc_mvvm/Rosources/Routes/routes_name.dart';

class SplashServices {
  void isLogin() {
    Timer(Duration(seconds: 3), () => Get.toNamed(RoutesName.login));
  }
}
