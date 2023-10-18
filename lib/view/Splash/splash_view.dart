import 'package:flutter/material.dart';

import '../../res/constant/app_assets.dart';
import '../Login/onboarding.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  navigate() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const OnBoarding(),
          ),
          (route) => false);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              AppAssets.splash,
              height: 60,
              width: 140,
            ),
          ),
        ],
      ),
    );
  }
}
