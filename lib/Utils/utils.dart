import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:project_getx_mvc_mvvm/Rosources/app_colors.dart';

class Utils {
  static fieldFcousChange(
    BuildContext context,
    FocusNode cureent,
    FocusNode nextFocus,
  ) {
    cureent.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.red,
      toastLength: Toast.LENGTH_SHORT,
      textColor: AppColors.white,
      timeInSecForIosWeb: 3,
      gravity: ToastGravity.BOTTOM_RIGHT,
    );
  }

  static snackBar(String title, String message) {
    Get.snackbar(
      title,
      message,
      backgroundColor: AppColors.red,
      colorText: AppColors.black,

      // borderColor: AppColors.white,
      snackPosition: SnackPosition.TOP,
      shouldIconPulse: true,
      icon: Icon(Icons.warning_rounded),
    );
  }
}
