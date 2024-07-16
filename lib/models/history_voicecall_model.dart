import 'package:doctors_appointment/const/app_assets.dart';
import 'package:flutter/material.dart';

class HistoryVoicecallModel {
  final String name;
  final String time;
  final String image;
  final IconData? icon;

  HistoryVoicecallModel(
      {required this.name,
      required this.time,
      required this.image,
      required this.icon});

  static List<HistoryVoicecallModel> historyVoiceCallList = [
    HistoryVoicecallModel(
      name: "Dr. Asmita Koirala",
      time: 'Voice Call\nToday10:00AM',
      image: AppAssets.imagesDoctor,
      icon: Icons.arrow_forward_ios,
    ),
    HistoryVoicecallModel(
      name: "Dr. Shristi Pokharel",
      time: 'Voice Call\n Today10:00AM',
      image: AppAssets.imagesDoctor1,
      icon: Icons.arrow_forward_ios,
    ),
    HistoryVoicecallModel(
      name: "Dr. Parbati Nepal",
      time: 'Voice Call\n Today10:00AM',
      image: AppAssets.imagesDoctor2,
      icon: Icons.arrow_forward_ios,
    ),
    HistoryVoicecallModel(
      name: "Dr. Samir Koirala",
      time: 'Voice Call\n Today10:00AM',
      image: AppAssets.imagesDoctor3,
      icon: Icons.arrow_forward_ios,
    ),
    HistoryVoicecallModel(
      name: "Dr. Krish Khanal",
      time: 'Voice Call\n Today10:00AM',
      image: AppAssets.imagesDoctor4,
      icon: Icons.arrow_forward_ios,
    ),
    HistoryVoicecallModel(
      name: "Dr. Susmita Koirala",
      time: 'Voice Call\n Today10:00AM',
      image: AppAssets.imagesUser,
      icon: Icons.arrow_forward_ios,
    ),
  ];
}
