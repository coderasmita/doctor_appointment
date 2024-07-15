import 'package:doctors_appointment/const/app_assets.dart';

class ArticlesModel {
  String image;
  String title;
  String subtitle;
  String textButton;

  ArticlesModel(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.textButton});
  static List<ArticlesModel> articlesList = [
    ArticlesModel(
      image: AppAssets.imagesCovid19,
      title: "Dec 22 2022",
      subtitle:
          "COVID-19 was a top cause of Death in 2022 and 2021 . Even for younger people",
      textButton: "Covid-19",
    ),
    ArticlesModel(
      image: AppAssets.imagesMedicine,
      title: "Dec 22 2022",
      subtitle: "Study finds Being Hangry is a real thing",
      textButton: "Covid- 19",
    ),
    ArticlesModel(
      image: AppAssets.imagesChildhood,
      title: "Dec 22 2022",
      subtitle: "Why childhood obesity rates are rising and what we can do.",
      textButton: "Covid- 19",
    ),
  ];
}
