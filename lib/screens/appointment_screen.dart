import 'package:doctors_appointment/components/primary_button.dart';
import 'package:doctors_appointment/models/appointment_model.dart';
import 'package:flutter/material.dart';

import '../const/app_assets.dart';
import '../const/app_colors.dart';
import '../const/app_text.dart';
import '../models/appointment_completed_model.dart';

class Appointments extends StatelessWidget {
  const Appointments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        automaticallyImplyLeading: false,
        title: const AppText(
          text: "My Appointment",
          weight: FontWeight.w500,
          size: 18,
        ),
        leading: Image.asset(AppAssets.imagesAppLogo),
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
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: AppColors.primaryColor,
              indicatorColor: AppColors.primaryColor,
              tabs: [
                Tab(
                  text: "Upcoming",
                ),
                Tab(
                  text: "Completed",
                ),
                Tab(
                  text: "Cancelled",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                    itemCount: AppointmentModel.appointmentList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        fit: BoxFit.cover,
                                        height: 150,
                                        width: 100,
                                        AppointmentModel
                                            .appointmentList[index].doctorImage,
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AppText(
                                            text: AppointmentModel
                                                .appointmentList[index]
                                                .doctorName,
                                            size: 16,
                                            weight: FontWeight.bold,
                                          ),
                                          const SizedBox(height: 4),
                                          Row(
                                            children: [
                                              AppText(
                                                text: AppointmentModel
                                                    .appointmentList[index]
                                                    .appointmentType,
                                                color: AppColors.greyColor,
                                                size: 12,
                                              ),
                                              const SizedBox(width: 2),
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8,
                                                        vertical: 4),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color:
                                                        AppColors.primaryColor,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: AppText(
                                                  text: AppointmentModel
                                                      .appointmentList[index]
                                                      .text,
                                                  color: AppColors.primaryColor,
                                                  size: 10,
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              CircleAvatar(
                                                backgroundColor: AppColors
                                                    .primaryColor
                                                    .withOpacity(0.2),
                                                child: Icon(
                                                  AppointmentModel
                                                      .appointmentList[index]
                                                      .icon,
                                                  size: 10,
                                                  color: AppColors.primaryColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                          AppText(
                                            text: AppointmentModel
                                                .appointmentList[index]
                                                .appointmentTime,
                                            color: AppColors.greyColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  thickness: 0.5,
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: PrimaryButton(
                                        height: 50,
                                        bgcolor: AppColors.whiteColor,
                                        textColor: AppColors.primaryColor,
                                        text: AppointmentModel
                                            .appointmentList[index]
                                            .textButtonOne,
                                        onTap: () {},
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: PrimaryButton(
                                        height: 50,
                                        text: AppointmentModel
                                            .appointmentList[index]
                                            .textButtonTwo,
                                        onTap: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  // const Center(child: Text('No Completed Appointments')),
                  ListView.builder(
                    itemCount: AppointmentModel.appointmentList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        fit: BoxFit.cover,
                                        height: 150,
                                        width: 100,
                                        AppointmentModel
                                            .appointmentList[index].doctorImage,
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AppText(
                                            text: AppointmentModel
                                                .appointmentList[index]
                                                .doctorName,
                                            size: 16,
                                            weight: FontWeight.bold,
                                          ),
                                          const SizedBox(height: 4),
                                          Row(
                                            children: [
                                              AppText(
                                                text: AppointmentModel
                                                    .appointmentList[index]
                                                    .appointmentType,
                                                color: AppColors.greyColor,
                                                size: 12,
                                              ),
                                              const SizedBox(width: 2),
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8,
                                                        vertical: 4),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color:
                                                        AppColors.primaryColor,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: AppText(
                                                  text:
                                                      AppointmentCompletedModel
                                                          .appointmentList[
                                                              index]
                                                          .text,
                                                  color: AppColors.primaryColor,
                                                  size: 10,
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              CircleAvatar(
                                                backgroundColor: AppColors
                                                    .primaryColor
                                                    .withOpacity(0.2),
                                                child: Icon(
                                                  AppointmentModel
                                                      .appointmentList[index]
                                                      .icon,
                                                  size: 10,
                                                  color: AppColors.primaryColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                          AppText(
                                            text: AppointmentModel
                                                .appointmentList[index]
                                                .appointmentTime,
                                            color: AppColors.greyColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  thickness: 0.5,
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: PrimaryButton(
                                        height: 50,
                                        bgcolor: AppColors.whiteColor,
                                        textColor: AppColors.primaryColor,
                                        text: AppointmentCompletedModel
                                            .appointmentList[index]
                                            .textButtonOne,
                                        onTap: () {},
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: PrimaryButton(
                                        height: 50,
                                        text: AppointmentCompletedModel
                                            .appointmentList[index]
                                            .textButtonTwo,
                                        onTap: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const Center(child: Text('No Cancelled Appointments')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
