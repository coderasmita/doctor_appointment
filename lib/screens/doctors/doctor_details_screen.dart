import 'package:doctors_appointment/const/app_assets.dart';
import 'package:doctors_appointment/models/doctors/doctor_deails_model.dart';
import 'package:flutter/material.dart';

import '../../const/app_colors.dart';
import '../../const/app_text.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: const AppText(
          text: "Asmita Koirala",
          weight: FontWeight.w500,
          size: 18,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              scale: 1.65,
              color: AppColors.redColor,
              AppAssets.imagesHeart,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
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
                          AppAssets.imagesDoctor),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                text: "Dr.Asmita Koirala",
                                weight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width - 200,
                            child: const Divider(),
                          ),
                          const AppText(
                            text: "Immunologists",
                          ),
                          const AppText(
                            text: "KMC, Hospital",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 120,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: DoctorDeailsModel.doctorDeailsList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, childAspectRatio: 0.6),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            AppColors.primaryColor.withOpacity(0.2),
                        radius: 20,
                        child: Image.asset(
                          color: AppColors.primaryColor,
                          scale: 1.65,
                          fit: BoxFit.cover,
                          height: 15,
                          width: 15,
                          DoctorDeailsModel.doctorDeailsList[index].image,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: DoctorDeailsModel.doctorDeailsList[index].rating,
                        size: 16,
                        weight: FontWeight.bold,
                      ),
                      AppText(
                        text: DoctorDeailsModel.doctorDeailsList[index].text,
                        size: 12,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const AppText(
              text: "About me",
              weight: FontWeight.bold,
              size: 16,
            ),
            const SizedBox(
              height: 10,
            ),
            const AppText(
              text:
                  "Dr.Asmita Koirala waston is the top most immunologisters specialist in KMC Hospital Kathmandu. She achived several awards for her wanderful contribution in medical field. She is available for private consultion.",
              size: 12,
            ),
            const SizedBox(
              height: 10,
            ),
            const AppText(
              text: "Working Time",
              weight: FontWeight.bold,
              size: 16,
            ),
            const SizedBox(
              height: 10,
            ),
            const AppText(
              text: "Monday - Friday, 08.800AM - 20.00PM",
              size: 12,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppText(
                  text: "Reviews",
                  weight: FontWeight.bold,
                  size: 16,
                ),
                TextButton(
                  onPressed: () {},
                  child: const AppText(
                    text: "See All",
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
