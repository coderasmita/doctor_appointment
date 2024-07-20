import 'package:doctors_appointment/const/app_assets.dart';

class ArticlesTrendingModel {
  final String image;
  final String text;

  ArticlesTrendingModel({required this.image, required this.text});
  static List<ArticlesTrendingModel> articlesTrandingList = [
    ArticlesTrendingModel(
        image: AppAssets.imagesHealthFood,
        text: "Adding salt to your food May Increase Risk of pre"),
    ArticlesTrendingModel(
        image: AppAssets.imagesHealthFood,
        text: "COVID_19 Reinfection in May Increase Risk of pre"),
  ];
}
