import 'package:flutter/material.dart';

import '../const/app_assets.dart';

class ProfileModel {
  final String title;
  final String leading;
  final Widget trailing;

  ProfileModel(this.title, this.leading, this.trailing);

  static List<ProfileModel> profileList = [
    ProfileModel(
      "Edit Profile",
      AppAssets.imagesPerson,
      const Icon(Icons.arrow_forward_ios_rounded),
    ),
    ProfileModel(
      "Notifications",
      AppAssets.imagesNotification,
      const Icon(Icons.arrow_forward_ios_rounded),
    ),
    ProfileModel(
      "Payment",
      AppAssets.imagesPayment,
      const Icon(Icons.arrow_forward_ios_rounded),
    ),
    ProfileModel(
      "Security",
      AppAssets.imagesSecurity,
      const Icon(Icons.arrow_forward_ios_rounded),
    ),
    ProfileModel(
      "Language",
      AppAssets.imagesLanguage,
      const Icon(Icons.arrow_forward_ios_rounded),
    ),
    ProfileModel(
      "Dark Mode",
      AppAssets.imagesDarkMode,
      const Icon(Icons.arrow_forward_ios_rounded),
    ),
    ProfileModel(
      "Help Center",
      AppAssets.imagesHelpCenter,
      const Icon(Icons.arrow_forward_ios_rounded),
    ),
    ProfileModel(
      "Logout",
      AppAssets.imagesLogout,
      const Icon(Icons.arrow_forward_ios_rounded),
    ),
  ];
}
