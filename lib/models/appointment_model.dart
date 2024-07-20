import 'package:flutter/material.dart';

import '../const/app_assets.dart';

class AppointmentModel {
  final String doctorName;
  final String appointmentType;
  final String text;
  final String appointmentTime;
  final String doctorImage;
  final IconData? icon;
  final String textButtonOne;
  final String textButtonTwo;

  AppointmentModel({
    required this.doctorName,
    required this.appointmentType,
    required this.text,
    required this.appointmentTime,
    required this.doctorImage,
    this.icon,
    required this.textButtonOne,
    required this.textButtonTwo,
  });

  static List<AppointmentModel> appointmentList = [
    AppointmentModel(
      doctorName: "Dr. Asmita Koirala",
      appointmentType: "Messaging -",
      appointmentTime: "Today | 16:00 PM",
      doctorImage: AppAssets.imagesDoctor,
      icon: Icons.message,
      text: "Upcoming",
      textButtonOne: "Cancel Appointment",
      textButtonTwo: "Reschedule",
    ),
    AppointmentModel(
      doctorName: "Dr. Shristi Pokharel",
      appointmentType: "Video Call -",
      appointmentTime: "Today | 16:00 PM",
      doctorImage: AppAssets.imagesDoctor1,
      icon: Icons.video_call,
      text: "Upcoming",
      textButtonOne: "Cancel Appointment",
      textButtonTwo: "Reschedule",
    ),
    AppointmentModel(
      doctorName: "Dr. Parbati Nepal",
      appointmentType: "Video Call -",
      appointmentTime: "Today | 16:00 PM",
      doctorImage: AppAssets.imagesDoctor2,
      icon: Icons.video_call,
      text: "Upcoming",
      textButtonOne: "Cancel Appointment",
      textButtonTwo: "Reschedule",
    ),
    AppointmentModel(
      doctorName: "Dr. Samir Koirala",
      appointmentType: "Video Call -",
      appointmentTime: "Today | 16:00 PM",
      doctorImage: AppAssets.imagesDoctor3,
      icon: Icons.video_call,
      text: "Upcoming",
      textButtonOne: "Cancel Appointment",
      textButtonTwo: "Reschedule",
    ),
    AppointmentModel(
      doctorName: "Dr. Krish Khanal",
      appointmentType: "Video Call -",
      appointmentTime: "Today | 16:00 PM",
      doctorImage: AppAssets.imagesDoctor4,
      icon: Icons.video_call,
      text: "Upcoming",
      textButtonOne: "Cancel Appointment",
      textButtonTwo: "Reschedule",
    ),
    AppointmentModel(
      doctorName: "Dr. Susmita Koirala",
      appointmentType: "Video Call -",
      appointmentTime: "Today | 16:00 PM",
      doctorImage: AppAssets.imagesUser,
      icon: Icons.video_call,
      text: "Upcoming",
      textButtonOne: "Cancel Appointment",
      textButtonTwo: "Reschedule",
    ),
  ];
}
