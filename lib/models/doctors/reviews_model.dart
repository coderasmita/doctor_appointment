import 'package:flutter/material.dart';

class ReviewsModel {
  final IconData? icon;
  final String text;

  ReviewsModel({required this.icon, required this.text});

  static List<ReviewsModel> reviewsList = [
    ReviewsModel(
      icon: Icons.star,
      text: "All",
    ),
    ReviewsModel(
      icon: Icons.star,
      text: "5",
    ),
    ReviewsModel(
      icon: Icons.star,
      text: "4",
    ),
    ReviewsModel(
      icon: Icons.star,
      text: "3",
    ),
    ReviewsModel(
      icon: Icons.star,
      text: "2",
    ),
    ReviewsModel(
      icon: Icons.star,
      text: "1",
    ),
  ];
}
