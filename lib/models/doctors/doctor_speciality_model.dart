import '../../const/app_assets.dart';

class DoctorSpecialistModel {
  final String name;
  final String icon;

  DoctorSpecialistModel({required this.name, required this.icon});
  static List<DoctorSpecialistModel> doctorSpeciaList = [
    DoctorSpecialistModel(name: "General", icon: AppAssets.imagesPerson),
    DoctorSpecialistModel(name: "Dentist", icon: AppAssets.imagesTooth),
    DoctorSpecialistModel(name: "Opthalmologist", icon: AppAssets.imagesEye),
    DoctorSpecialistModel(name: "Nutritionist", icon: AppAssets.imagesApple),
    DoctorSpecialistModel(
        name: "Neurologist", icon: AppAssets.imagesNeurologist),
    DoctorSpecialistModel(name: "Pediatric", icon: AppAssets.imagesPediatric),
    DoctorSpecialistModel(name: "Radiology", icon: AppAssets.imagesXRays),
    DoctorSpecialistModel(name: "More", icon: AppAssets.imagesMore),
  ];
}
