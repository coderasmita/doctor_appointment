import 'package:doctors_appointment/const/app_assets.dart';

class HistoryModel {
  final String name;
  final String message;
  final String time;
  final String image;

  HistoryModel({
    required this.name,
    required this.message,
    required this.time,
    required this.image,
  });
  static List<HistoryModel> historyList = [
    HistoryModel(
      name: 'Dr.Asmita Koirala',
      message: 'My pleasure. All the best for',
      time: 'Today\n10:00AM',
      image: AppAssets.imagesDoctor,
    ),
    HistoryModel(
      name: 'Dr.Shristi Pokharel',
      message: 'Your solution is grate! 🔥',
      time: 'Yesterday\n18:00PM',
      image: AppAssets.imagesDoctor1,
    ),
    HistoryModel(
      name: 'Dr. Parbati Nepal',
      message: 'Thanks for the help doctor 🙏',
      time: '20/12/2022\n10:30AM',
      image: AppAssets.imagesDoctor2,
    ),
    HistoryModel(
        name: 'Dr.Samir Koirala',
        message: 'I have recovered, thank you',
        time: '14/12/2022\n17:30AM',
        image: AppAssets.imagesDoctor3),
    HistoryModel(
      name: 'Dr.Krish Khanal',
      message: 'I went there yesterday 😃',
      time: '26/11/2022\n09:30PM',
      image: AppAssets.imagesDoctor4,
    ),
    HistoryModel(
      name: 'Dr.Susmita Koirala',
      message: 'IDK what else is there to do..',
      time: '09/11/2022\n10:30AM',
      image: AppAssets.imagesUser,
    ),
  ];
}
