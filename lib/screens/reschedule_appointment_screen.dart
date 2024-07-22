import 'package:doctors_appointment/const/app_text.dart';
import 'package:flutter/material.dart';

class RescheduleAppointmentScreen extends StatelessWidget {
  const RescheduleAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            AppText(
              text: "Reason for Schedule Change",
              weight: FontWeight.bold,
            ),
            SizedBox(
              height: 15,
            ),
            // RadioListTile(
            //     contentPadding: EdgeInsets.zero,
            //     title: AppText(text: "I'm having a schedule clash"),
            //     value: "",
            //     groupValue: "",
            //     onChanged: (String? value) {})
            // ListView.builder(itemBuilder: (context, index){
            //   return RadioListTile(
            //     title: ,
            //     value: "", groupValue: groupValue, onChanged: onChanged)
            // })
          ],
        ),
      ),
    );
  }
}
