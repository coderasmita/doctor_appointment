import 'package:doctors_appointment/screens/doctors/doctor_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/primary_button.dart';
import '../../const/app_assets.dart';
import '../../const/app_colors.dart';
import '../../const/app_text.dart';
import '../../models/top_doctors_model.dart';

class TopDoctorScreen extends StatelessWidget {
  const TopDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          title: const AppText(
            text: "Top Doctor",
            weight: FontWeight.w500,
            size: 18,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PrimaryButton(
                    text: "All",
                    onTap: () {},
                    height: 30,
                    width: 150,
                    bgcolor: AppColors.primaryColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  PrimaryButton(
                    text: "General",
                    onTap: () {},
                    height: 30,
                    width: 150,
                    bgcolor: AppColors.primaryColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  PrimaryButton(
                    text: "Dentist",
                    onTap: () {},
                    height: 30,
                    width: 150,
                    bgcolor: AppColors.primaryColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  PrimaryButton(
                    text: "Nutritionist",
                    onTap: () {},
                    height: 30,
                    width: 150,
                    bgcolor: AppColors.primaryColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  PrimaryButton(
                    text: "aphthalmology",
                    onTap: () {},
                    height: 30,
                    width: 150,
                    bgcolor: AppColors.primaryColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  PrimaryButton(
                    text: "pediatric",
                    onTap: () {},
                    height: 30,
                    width: 150,
                    bgcolor: AppColors.primaryColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  PrimaryButton(
                    text: "Radiology",
                    onTap: () {},
                    height: 30,
                    width: 150,
                    bgcolor: AppColors.primaryColor,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                shrinkWrap: true,
                itemCount: TopDoctorModel.topDoctorList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Get.to(
                      () => const DoctorDetailsScreen(),
                    ),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: AppColors.greyColor.withOpacity(0.3),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      borderOnForeground: true,
                      color: AppColors.whiteColor,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                  height: 100,
                                  width: 70,
                                  fit: BoxFit.cover,
                                  TopDoctorModel.topDoctorList[index].image),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AppText(
                                        text: TopDoctorModel
                                            .topDoctorList[index].name,
                                        weight: FontWeight.w600,
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          scale: 1.65,
                                          AppAssets.imagesHeart,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width - 200,
                                    child: const Divider(),
                                  ),
                                  AppText(
                                    text: TopDoctorModel
                                        .topDoctorList[index].designation,
                                    maxLine: 1,
                                    textOverflow: TextOverflow.ellipsis,

                                    // color: AppColors.greyColor,
                                  ),
                                  AppText(
                                      text: TopDoctorModel
                                          .topDoctorList[index].rating),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
