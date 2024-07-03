import 'package:doctors_appointment/const/app_text.dart';
import 'package:doctors_appointment/screens/dashboard_screen.dart';
import 'package:doctors_appointment/screens/signup_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/custom_text_field.dart';
import '../components/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisibility = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(
              textInputType: TextInputType.emailAddress,
              hintText: "Email",
              prefixIcon: const Icon(
                Icons.person,
              ),
              textEditingController: _emailController,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              obscureText: isVisibility,
              hintText: "Passwords",
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
              textEditingController: _passwordController,
            ),
            const SizedBox(
              height: 20,
            ),
            PrimaryButton(
              title: "Log In",
              onPressed: () {
                Get.to(() => const DashboardScreen());
              },
              width: MediaQuery.sizeOf(context).width,
              //color primaty ma diyako xa bhane yo nabhaya yo
              // textColor: AppColor.black,
              // bgColor: Colors.green,
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Get.to(() => const SignupScreen());
                },
                child: const AppText(
                  title: "Don't have an account? Register",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
