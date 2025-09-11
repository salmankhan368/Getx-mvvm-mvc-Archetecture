import 'package:flutter/cupertino.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/state_manager.dart';
import 'package:project_getx_mvc_mvvm/Repository/login_Repository/login_repository.dart';
import 'package:project_getx_mvc_mvvm/Utils/utils.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxBool loading = false.obs;
  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api
        .loginApi(data)
        .then((value) {
          loading.value = false;
          Utils.snackBar("login Succesfully".tr, "Login Sucessfully");
        })
        .onError((error, stackTrace) {
          loading.value = false;
          Utils.snackBar('error', error.toString());
        });
  }
}
