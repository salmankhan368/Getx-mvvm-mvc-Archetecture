import 'package:get/get.dart';
import 'package:project_getx_mvc_mvvm/Rosources/Routes/routes_name.dart';
import 'package:project_getx_mvc_mvvm/View/login_view.dart';
import 'package:project_getx_mvc_mvvm/View/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(
      name: RoutesName.splashScreen,
      page: () => SplashScreen(),
      transition: Transition.leftToRight,
      transitionDuration: Duration(milliseconds: 250),
    ),
    GetPage(
      name: RoutesName.login,
      page: () => LoginView(),
      transition: Transition.leftToRight,
      transitionDuration: Duration(milliseconds: 250),
    ),
  ];
}
