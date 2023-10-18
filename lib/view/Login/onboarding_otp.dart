import 'package:doctor_app/res/constant/app_assets.dart';
import 'package:doctor_app/view/Home/main_page.dart';
import 'package:flutter/material.dart';

import '../../res/common/app_button.dart';
import '../../res/constant/app_colors.dart';

class OnBoardingOtp extends StatefulWidget {
  const OnBoardingOtp({super.key});

  @override
  State<OnBoardingOtp> createState() => _OnBoardingOtpState();
}

class _OnBoardingOtpState extends State<OnBoardingOtp> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppAssets.onboarding2),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Enter the OTP",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                    fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "We have sent OTP at 1234567890",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.gray,
                    fontSize: 12),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(screenWidth / 20),
              child: AppButton(
                height: screenHeight / 18,
                width: double.infinity,
                elevated: "Proceed",
                onPress: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainHomePage(),
                      ),
                      (route) => false);
                },
              ),
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
