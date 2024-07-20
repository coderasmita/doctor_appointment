import 'package:doctors_appointment/models/articles_trending_model.dart';
import 'package:flutter/material.dart';

import '../components/primary_button.dart';
import '../components/text_buttons.dart';
import '../const/app_assets.dart';
import '../const/app_colors.dart';
import '../const/app_text.dart';
import '../models/articles_model.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppText(
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
              SizedBox(
                height: 200,
                child: ListView.separated(
                  itemCount: ArticlesTrendingModel.articlesTrandingList.length,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              ArticlesTrendingModel
                                  .articlesTrandingList[index].image,
                              height: 100,
                              width: 200,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.55,
                          child: AppText(
                              text: ArticlesTrendingModel
                                  .articlesTrandingList[index].text),
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
                    text: "Articles",
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
              const SizedBox(
                height: 15,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: ArticlesModel.articlesList.length,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          ArticlesModel.articlesList[index].image,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            text: ArticlesModel.articlesList[index].title,
                            size: 8,
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.50,
                            child: AppText(
                              text: ArticlesModel.articlesList[index].subtitle,
                              weight: FontWeight.bold,
                              size: 12,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(6),
                            alignment: Alignment.center,
                            height: 26,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor.withOpacity(0.25),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: AppText(
                              text:
                                  ArticlesModel.articlesList[index].textButton,
                              color: AppColors.primaryColor,
                              size: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
