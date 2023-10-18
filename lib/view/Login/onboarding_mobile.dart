import 'package:doctor_app/res/constant/app_assets.dart';
import 'package:doctor_app/view/Login/onboarding_otp.dart';
import 'package:flutter/material.dart';

import '../../res/constant/app_colors.dart';

class OnBoardingMobile extends StatefulWidget {
  const OnBoardingMobile({super.key});

  @override
  State<OnBoardingMobile> createState() => _OnBoardingMobileState();
}

class _OnBoardingMobileState extends State<OnBoardingMobile> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: Form(
        key: formkey,
        child: Padding(
          padding: devicePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppAssets.onboarding2),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Let’s get started",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                      fontSize: 16),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Verify your account using OTP",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.gray,
                      fontSize: 12),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth / 20),
                child: TextFormField(
                  validator: (value) {
                    if (!RegExp(
                        // r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        r'^(?:[+0][1-9])?[0-9]{10,12}$').hasMatch(value!)) {
                      return "Please Enter Mobile Number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Text("+91"),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(width: 0.8, color: AppColors.red),
                    ),

                    // isDense: true,
                    labelText: "Enter Mobile Number",

                    contentPadding: const EdgeInsets.all(12),
                  ),
                  onTap: () {},
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(screenWidth / 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                      fixedSize: MaterialStatePropertyAll(
                          Size(screenWidth / 1, screenHeight / 18)),
                      backgroundColor:
                          const MaterialStatePropertyAll(AppColors.red)),
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      debugPrint("is valid");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnBoardingOtp(),
                        ),
                      );
                    } else {
                      debugPrint("is not valid");
                    }
                  },
                  child: const Text(
                    "Proceed",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
