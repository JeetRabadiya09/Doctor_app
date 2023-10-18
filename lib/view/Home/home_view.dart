import 'package:flutter/material.dart';

import '../../res/constant/app_colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
            Padding(
              padding: EdgeInsets.all(screenWidth / 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/avtar.png",
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Person Name",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                            fontSize: 16),
                      ),
                      Text(
                        "Designation",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFA0A0A0),
                            fontSize: 12),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images/notification.png",
                    height: 40,
                    width: 40,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 163,
                    height: 133,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFE31C31),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/images/time.png",
                                width: 64,
                                height: 60,
                              ),
                            ],
                          ),
                          const Text(
                            "123",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.red,
                                fontSize: 24),
                          ),
                          const Text(
                            "Today  Appointments",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 163,
                    height: 133,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFE31C31),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/images/time2.png",
                                width: 64,
                                height: 60,
                              ),
                            ],
                          ),
                          const Text(
                            "60",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.red,
                                fontSize: 24),
                          ),
                          const Text(
                            "Cancel Appointments",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                                fontSize: 13.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFFE31C31),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "assets/images/patient.png",
                      width: 42,
                      height: 42,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "123",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.red,
                              fontSize: 24),
                        ),
                        Text(
                          "Today  Appointments",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.black,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Next Appointment",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.red,
                        fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                        color: AppColors.red,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
