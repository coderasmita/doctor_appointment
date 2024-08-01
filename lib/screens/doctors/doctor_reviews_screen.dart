import 'package:doctors_appointment/const/app_text.dart';
import 'package:flutter/material.dart';

import '../../const/app_assets.dart';
import '../../const/app_colors.dart';
import '../../models/appointment_model/reviews_screen_model.dart';
import '../../models/doctors/reviews_model.dart';

class DoctorReviewsScreen extends StatelessWidget {
  const DoctorReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: const AppText(text: "4.8(4.942 reviews)"),
        actions: const [
          Icon(Icons.more_horiz),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: GridView.builder(
                itemCount: ReviewsModel.reviewsList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6, childAspectRatio: 0.6),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                                height: 5, width: 10, AppAssets.imagesStar),
                            AppText(
                              text: ReviewsModel.reviewsList[index].text,
                              size: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => const Divider(
                  height: 40,
                ),
                itemCount: ReviewsScreenModel.reviewsList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                                ReviewsScreenModel.reviewsList[index].image),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppText(
                            text: ReviewsScreenModel
                                .reviewsList[index].doctorName,
                            weight: FontWeight.bold,
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                    height: 5, width: 10, AppAssets.imagesStar),
                                AppText(
                                  text: ReviewsScreenModel
                                      .reviewsList[index].rating,
                                  color: AppColors.primaryColor,
                                  size: 10,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(ReviewsScreenModel.reviewsList[index].icon),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      AppText(
                        text: ReviewsScreenModel.reviewsList[index].message,
                        size: 12,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            scale: 1.65,
                            AppAssets.imagesHeart,
                            color: AppColors.redColor,
                          ),
                          AppText(
                            text: ReviewsScreenModel.reviewsList[index].likes,
                            size: 12,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          AppText(
                            text: ReviewsScreenModel.reviewsList[index].dayAgo,
                            size: 12,
                            color: AppColors.greyColor,
                          ),
                        ],
                      ),
                    ],
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
