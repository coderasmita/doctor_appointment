import '../const/app_assets.dart';

class DoctorSpecialistModel {
  String name;
  String icon;

  DoctorSpecialistModel({required this.name, required this.icon});
  static List<DoctorSpecialistModel> doctorSpeciaList = [
    DoctorSpecialistModel(name: "General", icon: AppAssets.imagesEye),
    DoctorSpecialistModel(name: "Dentist", icon: AppAssets.imagesEye),
    DoctorSpecialistModel(name: "Opthalmologist", icon: AppAssets.imagesEye),
    DoctorSpecialistModel(name: "Dentist", icon: AppAssets.imagesEye),
    DoctorSpecialistModel(name: "Dentist", icon: AppAssets.imagesEye),
    DoctorSpecialistModel(name: "Dentist", icon: AppAssets.imagesEye),
    DoctorSpecialistModel(name: "Dentist", icon: AppAssets.imagesEye),
    DoctorSpecialistModel(name: "Dentist", icon: AppAssets.imagesEye),
  ];
}
