import 'package:flutter/material.dart';

class SettingsModel {
  final Widget prefixIcon;
  final String title;
  final Widget suffixIcon;

  SettingsModel({
    required this.prefixIcon,
    required this.title,
    required this.suffixIcon,
  });

  static List<SettingsModel> settingsItems = [
    SettingsModel(
      prefixIcon: const Icon(Icons.person),
      title: "Profile",
      suffixIcon: const Icon(Icons.chevron_right),
    ),
    SettingsModel(
      prefixIcon: const Icon(Icons.notifications),
      title: "Notifications",
      suffixIcon: const Icon(Icons.chevron_right),
    ),
    SettingsModel(
      prefixIcon: const Icon(Icons.privacy_tip),
      title: "Privacy",
      suffixIcon: const Icon(Icons.chevron_right),
    ),
    SettingsModel(
      prefixIcon: const Icon(Icons.settings_applications),
      title: "General",
      suffixIcon: const Icon(Icons.chevron_right),
    ),
    SettingsModel(
      prefixIcon: const Icon(Icons.info),
      title: "About Us",
      suffixIcon: const Icon(Icons.chevron_right),
    ),
    SettingsModel(
      prefixIcon: const Icon(Icons.logout),
      title: "Logout",
      suffixIcon: const Icon(Icons.chevron_right),
    ),
  ];
}
