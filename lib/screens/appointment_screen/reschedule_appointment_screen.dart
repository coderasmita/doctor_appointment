import 'package:doctors_appointment/components/primary_button.dart';
import 'package:doctors_appointment/const/app_colors.dart';
import 'package:doctors_appointment/const/app_text.dart';
import 'package:doctors_appointment/models/appointment_model/reschedule_appointment_model.dart';
import 'package:flutter/material.dart';

class RescheduleAppointmentScreen extends StatelessWidget {
  const RescheduleAppointmentScreen({super.key});

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
              itemCount: RescheduleAppointmentModel.rescheduleList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return RadioListTile(
                  title: AppText(
                      text: RescheduleAppointmentModel
                          .rescheduleList[index].text),
                  value: "",
                  groupValue: "",
                  onChanged: (value) {},
                );
              },
            ),
            const Spacer(),
            PrimaryButton(
              text: "Next",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
