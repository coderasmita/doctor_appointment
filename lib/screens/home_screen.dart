import 'package:doctors_appointment/screens/doctors/top_doctor_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/custom_text_field.dart';
import '../components/primary_button.dart';
import '../components/text_buttons.dart';
import '../const/app_assets.dart';
import '../const/app_colors.dart';
import '../const/app_text.dart';

import '../models/doctors/doctor_speciality_model.dart';
import '../models/top_doctors_model.dart';
import 'doctors/doctor_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              AppAssets.imagesUser,
            ),
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: "Good Morning 👋",
              weight: FontWeight.w400,
              size: 14,
            ),
            AppText(
              text: "Asmita Koirala",
              weight: FontWeight.w500,
              size: 16,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              AppAssets.imagesNotification,
              color: AppColors.primaryColor,
              scale: 1.8,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              AppAssets.imagesHeart,
              scale: 1.8,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextField(
                prefixIcon: const Icon(
                  Icons.search,
                ),
                hintText: "Search",
                suffixIcon: Image.asset(
                  AppAssets.imagesTuning,
                  scale: 1.8,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Container(
                    height: 170,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.primaryColor),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppText(
                            text: "Medical Checks!",
                            color: AppColors.bgColor,
                            size: 20,
                            weight: FontWeight.w600,
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.65,
                            child: const AppText(
                              text:
                                  "Checks your health condition regularly to mainimize the incidence of disease the future,",
                              color: AppColors.bgColor,
                              size: 14,
                              weight: FontWeight.w300,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          PrimaryButton(
                            text: "Check Now",
                            onTap: () {},
                            height: 30,
                            width: 150,
                            bgcolor: AppColors.bgColor,
                            textColor: AppColors.primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    AppAssets.imagesUser,
                    height: 150,
                    width: 100,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppText(
                    text: "Doctor Specialist",
                    weight: FontWeight.w600,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 170,
                child: GridView.builder(
                  itemCount: DoctorSpecialistModel.doctorSpeciaList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor:
                              AppColors.primaryColor.withOpacity(0.1),
                          child: Image.asset(
                            height: 20,
                            scale: 2.6,
                            DoctorSpecialistModel.doctorSpeciaList[index].icon,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        AppText(
                          text: DoctorSpecialistModel
                              .doctorSpeciaList[index].name,
                          size: 12,
                        ),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppText(
                    text: "Top Doctors",
                    weight: FontWeight.w600,
                  ),
                  TextButtons(
                    text: "See All",
                    onTap: () {
                      Get.to(() => const TopDoctorScreen());
                    },
                    textColor: AppColors.primaryColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
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
              SizedBox(
                height: 700,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
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
                                      width: MediaQuery.sizeOf(context).width -
                                          200,
                                      child: const Divider(),
                                    ),
                                    AppText(
                                      text: TopDoctorModel
                                          .topDoctorList[index].designation,
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
          ),
        ),
      ),
    );
  }
}
