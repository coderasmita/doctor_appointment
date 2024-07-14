import '../const/app_assets.dart';

class TopDoctorModel {
  final String name;
  final String image;
  final String designation;
  final String rating;

  TopDoctorModel({
    required this.name,
    required this.image,
    required this.designation,
    required this.rating,
  });
  static List<TopDoctorModel> topDoctorList = [
    TopDoctorModel(
        name: "Dr. Asmita Koirala",
        image: AppAssets.imagesDoctor,
        designation: "Cardiologist | KMC Hospital",
        rating: " 4.5 (5376 reviews)"),
    TopDoctorModel(
        name: "Dr. Shristi Pokharel",
        image: AppAssets.imagesDoctor1,
        designation: "Heart specialist | OM Hospital",
        rating: " 4.5 (5376 reviews)"),
    TopDoctorModel(
        name: "Dr. Parbati Nepal",
        image: AppAssets.imagesDoctor2,
        designation: "Cardiologist | KMC Hospital",
        rating: " 4.5 (5376 reviews)"),
    TopDoctorModel(
        name: "Dr. Samir Koirala",
        image: AppAssets.imagesDoctor3,
        designation: "Heart specialist | Bir Hospital",
        rating: " 4.5 (5376 reviews)"),
    TopDoctorModel(
        name: "Dr. Krish Khanal",
        image: AppAssets.imagesDoctor4,
        designation: "Heart specialist | OM Hospital",
        rating: " 4.5 (5376 reviews)"),
  ];
}
