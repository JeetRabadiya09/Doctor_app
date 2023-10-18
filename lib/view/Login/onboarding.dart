import 'package:doctor_app/res/common/app_button.dart';
import 'package:doctor_app/res/constant/app_assets.dart';
import 'package:doctor_app/res/constant/app_colors.dart';
import 'package:doctor_app/res/constant/app_strings.dart';
import 'package:doctor_app/view/Login/onboarding_mobile.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: Padding(
        padding: devicePadding,
        child: Column(
          children: [
            SizedBox(
              height: screenHeight / 20,
            ),
            const Center(
              child: Text(
                AppStrings.onboading,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                    fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                AppStrings.onboading2,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                    fontSize: 14),
              ),
            ),
            SizedBox(
              height: screenHeight / 22,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(AppAssets.onboarding),
            ),
            const Spacer(),
            AppButton(
              height: screenHeight / 18,
              width: screenWidth / 1.2,
              elevated: "Get Started",
              onPress: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoardingMobile(),
                    ),
                    (route) => false);
              },
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Scan and go",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                      fontSize: 14)),
            ),
            SizedBox(
              height: screenHeight / 17,
            ),
          ],
        ),
      ),
    );
  }
}
