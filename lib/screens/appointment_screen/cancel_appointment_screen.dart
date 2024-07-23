import 'package:doctors_appointment/const/app_assets.dart';
import 'package:doctors_appointment/models/appointment_model/cancel_appointment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/primary_button.dart';
import '../../const/app_colors.dart';
import '../../const/app_text.dart';
import '../dashboard_screen.dart';

class CancelAppointmentScreen extends StatelessWidget {
  const CancelAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: const AppText(
          text: "Reschedule Appointment",
          weight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppText(
              text: "Reason for Schedule Change",
              weight: FontWeight.bold,
            ),
            const SizedBox(
              height: 15,
            ),
            ListView.builder(
              itemCount: CancelAppointment.cancelList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return RadioListTile(
                  title:
                      AppText(text: CancelAppointment.cancelList[index].text),
                  value: "",
                  groupValue: "",
                  onChanged: (value) {},
                );
              },
            ),
            const Spacer(),
            PrimaryButton(
              text: "Submit",
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Card(
                      color: AppColors.whiteColor,
                      margin: const EdgeInsets.symmetric(
                          vertical: 140, horizontal: 16),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Image.asset(
                              height: 50,
                              width: 50,
                              AppAssets.imagesCancel,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const AppText(
                              textAlign: TextAlign.center,
                              text: "Cancel Appointment\nSuccess!",
                              color: AppColors.primaryColor,
                              size: 18,
                              weight: FontWeight.bold,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const AppText(
                              textAlign: TextAlign.center,
                              text:
                                  "We are very sad that you have canceled your appointment. we will always improve our sevice to satisfy you in the next appoinment,",
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            PrimaryButton(
                              text: "OK",
                              onTap: () {
                                Get.offAll(() => const DashboardScreen());
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
