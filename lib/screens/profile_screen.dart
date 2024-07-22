import 'package:flutter/material.dart';

import '../const/app_assets.dart';
import '../const/app_colors.dart';
import '../const/app_text.dart';
import '../models/profile_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        automaticallyImplyLeading: false,
        title: const AppText(
          text: "Profile",
          weight: FontWeight.w500,
          size: 18,
        ),
        leading: Image.asset(AppAssets.imagesAppLogo),
      ),
      body: ListView(
        children: [
          const Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  AppAssets.imagesUser,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              AppText(
                text: "Asmita Koirala",
                weight: FontWeight.bold,
                size: 16,
              ),
              SizedBox(
                height: 10,
              ),
              AppText(
                text: "+9779840135960",
                weight: FontWeight.bold,
                size: 12,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: const Divider(
              color: AppColors.greyColor,
              thickness: 1.5,
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: ProfileModel.profileList.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {},
                title: AppText(
                  text: ProfileModel.profileList[index].title,
                ),
                leading: Image.asset(
                  scale: 1.5,
                  ProfileModel.profileList[index].leading,
                ),
                trailing: index == 5
                    ? Switch(
                        value: isSwitch,
                        onChanged: (value) {
                          setState(() {
                            isSwitch = value;
                          });
                        })
                    : ProfileModel.profileList[index].trailing,
              );
            },
          ),
        ],
      ),
    );
  }
}
