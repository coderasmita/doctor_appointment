import 'package:doctors_appointment/components/text_buttons.dart';
import 'package:doctors_appointment/models/articles_model.dart';
import 'package:flutter/material.dart';

import '../components/primary_button.dart';
import '../const/app_assets.dart';
import '../const/app_colors.dart';
import '../const/app_text.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        automaticallyImplyLeading: false,
        title: const AppText(
          text: "Articles",
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
            icon: const Icon(Icons.book),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              // Padding(
              //     padding:
              //         EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Trending",
                    weight: FontWeight.bold,
                  ),
                  TextButtons(
                    onTap: () {},
                    text: "See All",
                    textColor: AppColors.primaryColor,
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(AppAssets.imagesHealthFood),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(AppAssets.imagesHealthFood),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.65,
                      child: const AppText(
                        text:
                            "Adding salt to your food May Increase Risk of pre",
                        weight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.65,
                      child: AppText(
                        text:
                            "COVID- 19 Reinfection in May Increase Risk of pre",
                        weight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Articals",
                    weight: FontWeight.bold,
                  ),
                  TextButtons(
                    onTap: () {},
                    text: "See All",
                    textColor: AppColors.primaryColor,
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PrimaryButton(
                      text: "Newest",
                      onTap: () {},
                      height: 30,
                      width: 150,
                      bgcolor: AppColors.primaryColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    PrimaryButton(
                      text: "Health",
                      onTap: () {},
                      height: 30,
                      width: 150,
                      bgcolor: AppColors.primaryColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    PrimaryButton(
                      text: "Covid-19",
                      onTap: () {},
                      height: 30,
                      width: 150,
                      bgcolor: AppColors.primaryColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    PrimaryButton(
                      text: "Lifestyle",
                      onTap: () {},
                      height: 30,
                      width: 150,
                      bgcolor: AppColors.primaryColor,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading:
                          Image.asset(ArticlesModel.articlesList[index].image),
                      title: Column(
                        children: [
                          AppText(
                            text: ArticlesModel.articlesList[index].title,
                            color: AppColors.blackColor,
                            size: 8,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              ArticlesModel.articlesList[index].subtitle,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackColor,
                              ),
                            ),
                          ),
                          PrimaryButton(
                            text: ArticlesModel.articlesList[index].textButton,
                            width: 110,
                            height: 50,
                            textColor: AppColors.primaryColor,
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ],
      ),
    );
  }
}
