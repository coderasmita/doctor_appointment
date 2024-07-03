import 'package:doctors_appointment/const/app_assets.dart';
import 'package:doctors_appointment/const/app_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const AppText(
          title: "Hello Doctor",
          size: 20,
          fontWeight: FontWeight.w500,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage(AppAssets.imagesDoctors),
            ),
          )
        ],
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
