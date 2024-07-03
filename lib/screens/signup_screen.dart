import 'package:doctors_appointment/components/custom_text_field.dart';
import 'package:doctors_appointment/components/primary_button.dart';
import 'package:doctors_appointment/const/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dashboard_screen.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isVisibility = true;
  bool isConfirmVisibility = true;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTextField(
                textInputType: TextInputType.name,
                hintText: "Full Name",
                prefixIcon: Icon(
                  Icons.person,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                textInputType: TextInputType.emailAddress,
                hintText: "Email Address",
                prefixIcon: Icon(
                  Icons.email,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                textInputType: TextInputType.phone,
                hintText: "Phone Number",
                prefixIcon: Icon(Icons.call),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                obscureText: isVisibility,
                textInputType: TextInputType.visiblePassword,
                textEditingController: _passwordController,
                hintText: "Password",
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      isVisibility = !isVisibility;
                    });
                  },
                  child: Icon(
                    isVisibility ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                textEditingController: _confirmPasswordController,
                obscureText: isConfirmVisibility,
                hintText: "Confirm Password",
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      isConfirmVisibility = !isConfirmVisibility;
                    });
                  },
                  child: Icon(
                    isConfirmVisibility
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton(
                title: "Create Account",
                onPressed: () {
                  Get.to(() => const DashboardScreen());
                },
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => const LoginScreen());
                },
                child: const AppText(
                  title: "Already have account? Login",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
