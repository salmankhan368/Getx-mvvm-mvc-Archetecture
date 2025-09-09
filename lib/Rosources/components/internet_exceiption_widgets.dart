import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:project_getx_mvc_mvvm/Rosources/app_colors.dart';

class InternetExceiptionWidgets extends StatefulWidget {
  final VoidCallback onPress;
  const InternetExceiptionWidgets({super.key, required this.onPress});

  @override
  State<InternetExceiptionWidgets> createState() =>
      _InternetExceiptionWidgetsState();
}

class _InternetExceiptionWidgetsState extends State<InternetExceiptionWidgets> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: height * 0.15),
            Icon(Icons.cloud_off, color: AppColors.red, size: 50),
            Padding(padding: EdgeInsetsGeometry.only(top: 30)),

            Center(
              child: Text('internet_exception'.tr, textAlign: TextAlign.center),
            ),
            SizedBox(height: height * 0.15),
            InkWell(
              onTap: widget.onPress,
              child: Container(
                height: 44,
                width: 144,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.primaryColor,
                ),
                child: Center(
                  child: Text(
                    "Retry",
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium!.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
