import 'package:doctor_app/view/Explore/explore_view.dart';
import 'package:doctor_app/view/History/history_view.dart';
import 'package:doctor_app/view/Home/home_view.dart';
import 'package:doctor_app/view/Profile/profile_view.dart';
import 'package:flutter/material.dart';

import '../../res/constant/app_colors.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int currentIndex = 0;

  List<Widget> ScreenList = [
    const HomeView(),
    const HistoryView(),
    const ExploreView(),
    const Profileview(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenList[currentIndex],
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.red,
        onPressed: () {
          debugPrint("tapped");
        },
        child: const Icon(Icons.qr_code_scanner_rounded),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        // selectedColorOpacity: 01,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: const Color(0xFFB1B1B1),
        selectedItemColor: AppColors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            activeIcon: Icon(Icons.home_filled, color: AppColors.red),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_filled_rounded),
            activeIcon:
                Icon(Icons.access_time_filled_rounded, color: AppColors.red),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.near_me_rounded),
            activeIcon: Icon(Icons.near_me_rounded, color: AppColors.red),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            activeIcon: Icon(Icons.person_rounded, color: AppColors.red),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
