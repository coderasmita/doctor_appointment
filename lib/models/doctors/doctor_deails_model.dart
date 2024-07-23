import 'package:doctors_appointment/const/app_assets.dart';

class DoctorDeailsModel {
  final String text;
  final String image;
  final String rating;

  DoctorDeailsModel(
      {required this.text, required this.image, required this.rating});

  static List<DoctorDeailsModel> doctorDeailsList = [
    DoctorDeailsModel(
        text: "Patients", image: AppAssets.imagesPeople, rating: "5,000+"),
    DoctorDeailsModel(
        text: "year experience", image: AppAssets.imagesLight, rating: "10+"),
    DoctorDeailsModel(
        text: "rating", image: AppAssets.imagesStar, rating: "4.8"),
    DoctorDeailsModel(
        text: "Reviews", image: AppAssets.imagesStar, rating: "4,942"),
  ];
}
