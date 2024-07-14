import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/custom_text_field.dart';
import '../components/primary_button.dart';
import '../const/app_assets.dart';
import '../const/app_colors.dart';
import '../const/app_text.dart';
import 'dashboard_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? isChecked = false;
  bool isVisibility = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                    width: 150, height: 150, AppAssets.imagesAppLogo),
              ),
              const SizedBox(
                height: 20,
              ),
              const AppText(
                text: "Login to Your Account",
                weight: FontWeight.w600,
                size: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hintText: "Email",
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                prefixIcon: Image.asset(scale: 1.8, AppAssets.imagesLetter),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: isVisibility,
                hintText: "Password",
                prefixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      isVisibility = !isVisibility;
                    });
                  },
                  child: Image.asset(
                      scale: 1.8,
                      isVisibility
                          ? AppAssets.imagesEye
                          : AppAssets.imagesLock),
                ),
                suffixIcon: Image.asset(
                  scale: 1.8,
                  AppAssets.imagesEyeClosed,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: AppColors.primaryColor,
                    tristate: true,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool;
                      });
                    },
                  ),
                  const AppText(text: "Remember me"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton(
                text: "Sign IN",
                onTap: () {
                  Get.to(() => const DashboardScreen());
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const AppText(
                text: "Forgot Password?",
                color: AppColors.primaryColor,
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColors.primaryColor,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: AppText(text: "or Continue with"),
                  ),
                  Expanded(
                    child: Divider(
                      color: AppColors.primaryColor,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: const TextStyle(color: AppColors.blackColor),
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(() => const SignupScreen());
                        },
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
