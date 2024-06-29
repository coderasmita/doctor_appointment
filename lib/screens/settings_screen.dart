import 'package:flutter/material.dart';

import '../const/app_strings.dart';
import '../const/app_style.dart';
import '../models/settings_model.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/doctor.png"),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppStyles.bold(
                      title: AppStrings.doctorName,
                    ),
                    AppStyles.normal(
                      title: AppStrings.profile,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: SettingsModel.settingsItems.length,
                separatorBuilder: (separatorBuilder, index) {
                  return const Divider();
                },
                itemBuilder: (itemBuilder, index) {
                  return ListTile(
                    onTap: () {},
                    leading: SettingsModel.settingsItems[index].prefixIcon,
                    title: AppStyles.normal(
                      alignment: TextAlign.left,
                      title: SettingsModel.settingsItems[index].title,
                    ),
                    trailing: SettingsModel.settingsItems[index].suffixIcon,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
