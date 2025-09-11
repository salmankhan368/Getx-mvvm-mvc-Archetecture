import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:project_getx_mvc_mvvm/Rosources/app_colors.dart';
import 'package:project_getx_mvc_mvvm/Rosources/components/round_button.dart';
import 'package:project_getx_mvc_mvvm/Utils/utils.dart';
import 'package:project_getx_mvc_mvvm/View_Model/controller/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formkey = GlobalKey<FormState>();
  final loginView = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Login Page".tr,
            style: TextStyle(color: AppColors.primaryColor),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    controller: loginView.emailController.value,
                    focusNode: loginView.emailFocusNode.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'email_hint'.tr,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar('email_hint'.tr, "enter_email".tr);
                      }
                      return "";
                    },
                    onFieldSubmitted: (value) {
                      Utils.fieldFcousChange(
                        context,
                        loginView.emailFocusNode.value,
                        loginView.passwordFocusNode.value,
                      );
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: loginView.passwordController.value,
                    focusNode: loginView.passwordFocusNode.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'password_hint'.tr,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar('password_hint'.tr, 'enter_password'.tr);
                      }
                      return "";
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            RoundButton(
              title: 'login'.tr,
              width: 144,
              onPress: () {
                if (_formkey.currentState!.validate()) {}
              },
            ),
          ],
        ),
      ),
    );
  }
}
