import 'package:flutter/material.dart';
import 'package:project_getx_mvc_mvvm/Rosources/app_colors.dart';

import 'package:project_getx_mvc_mvvm/Rosources/assets/assets_image.dart';
import 'package:project_getx_mvc_mvvm/View_Model/services/splash_services.dart';
// import 'package:get/get_utils/src/extensions/internacionalization.dart';
// import 'package:project_getx_mvc_mvvm/Rosources/app_colors.dart';
// import 'package:project_getx_mvc_mvvm/Rosources/components/general_exception.dart';
// import 'package:project_getx_mvc_mvvm/Rosources/components/internet_exceiption_widgets.dart';
// import 'package:project_getx_mvc_mvvm/Rosources/components/round_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashScreen = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(child: Image(image: AssetImage(AssetsImage.splash))),
    );
  }
}
//ROUNDbUTTONtESTING
  // RoundButton(
  //           title: "Login",
  //           loading: true,
  //           width: double.infinity,
  //           buttonColor: AppColors.primaryColor,
  //           onPress: () {},
  //         ),
  //         RoundButton(
  //           title: "SIgnup",
  //           loading: false,
  //           // width: double.infinity,
  //           buttonColor: AppColors.primaryColor,
  //           onPress: () {},
  //         ),
  



  //GENERAL AND INTERNET EXCEPTION TESTING
    //GeneralExceiptionWidgets(onPress: () {});
    //InternetExceiptionWidgets(onPress: () {});
