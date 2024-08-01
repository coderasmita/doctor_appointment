import 'package:doctors_appointment/const/app_assets.dart';
import 'package:flutter/material.dart';

class ReviewsScreenModel {
  final String doctorName;
  final String image;
  final String rating;
  final String message;
  final String likes;
  final String dayAgo;
  final IconData? icon;
  final IconData? favorite;

  ReviewsScreenModel({
    required this.doctorName,
    required this.image,
    required this.rating,
    required this.likes,
    required this.message,
    required this.dayAgo,
    this.favorite,
    this.icon,
  });

  static List<ReviewsScreenModel> reviewsList = [
    ReviewsScreenModel(
      doctorName: "Asmita Koirala",
      image: AppAssets.imagesAsmu,
      rating: "4",
      likes: "938",
      icon: Icons.more_horiz,
      favorite: Icons.favorite,
      message:
          "Dr.Asmita is very professional in her work and responsive. I have consulted and my problem is solved.❤️😍😍",
      dayAgo: "6 day ago",
    ),
    ReviewsScreenModel(
      doctorName: "Sanjeep Khanal",
      image: AppAssets.imagesSanjeep,
      rating: "4",
      likes: "938",
      message:
          "Dr.Shristi is very professional in her work and responsive. I have consulted and my problem is solved.❤️😍😍",
      dayAgo: "6 day ago",
      icon: Icons.more_horiz,
      favorite: Icons.favorite,
    ),
    ReviewsScreenModel(
      doctorName: "Parbati Nepal",
      image: AppAssets.imagesParu,
      rating: "4",
      likes: "938",
      message:
          "Dr.Parbati is very professional in her work and responsive. I have consulted and my problem is solved.❤️😍😍",
      dayAgo: "6 day ago",
      icon: Icons.more_horiz,
      favorite: Icons.favorite,
    ),
    ReviewsScreenModel(
      doctorName: "Ronny",
      image: AppAssets.imagesRonny,
      rating: "4",
      likes: "938",
      message:
          "Dr.Parbati is very professional in her work and responsive. I have consulted and my problem is solved.❤️😍😍",
      dayAgo: "6 day ago",
      icon: Icons.more_horiz,
      favorite: Icons.favorite,
    ),
    ReviewsScreenModel(
      doctorName: "Shristi Pokharel",
      image: AppAssets.imagesUser,
      rating: "4",
      likes: "938",
      message:
          "Dr.Parbati is very professional in her work and responsive. I have consulted and my problem is solved.❤️😍😍",
      dayAgo: "6 day ago",
      icon: Icons.more_horiz,
      favorite: Icons.favorite,
    ),
    ReviewsScreenModel(
      doctorName: "Samuna Tamang",
      image: AppAssets.imagesSamuna,
      rating: "4",
      likes: "938",
      message:
          "Dr.Parbati is very professional in her work and responsive. I have consulted and my problem is solved.❤️😍😍",
      dayAgo: "6 day ago",
      icon: Icons.more_horiz,
      favorite: Icons.favorite,
    ),
    ReviewsScreenModel(
      doctorName: "Rinu Kc",
      image: AppAssets.imagesAsmi,
      rating: "4",
      likes: "938",
      message:
          "Dr.Parbati is very professional in her work and responsive. I have consulted and my problem is solved.❤️😍😍",
      dayAgo: "6 day ago",
      icon: Icons.more_horiz,
      favorite: Icons.favorite,
    ),
  ];
}
