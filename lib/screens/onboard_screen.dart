import 'package:doctors_appointment/const/app_assets.dart';
import 'package:doctors_appointment/const/app_color.dart';
import 'package:doctors_appointment/const/app_text.dart';
import 'package:flutter/material.dart';

import '../const/app_strings.dart';
import '../const/app_style.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: AppText(
              title: AppStrings.skip.toUpperCase(),
              color: AppColor.primaryColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.imagesDoctors),
            const SizedBox(
              height: 20,
            ),
            AppStyles.bold(
              title: AppStrings.doctorsAppointment,
              color: AppColor.primaryColor,
            ),
            const SizedBox(
              height: 10,
            ),
            AppStyles.normal(
              title: AppStrings.appointYourDoctor,
              color: AppColor.primaryColor,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: AppColor.primaryColor),
                  child: AppStyles.bold(
                    title: AppStrings.logIn,
                    color: AppColor.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: AppColor.primaryColor),
                  child: AppStyles.bold(
                    title: AppStrings.signIn,
                    color: AppColor.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
