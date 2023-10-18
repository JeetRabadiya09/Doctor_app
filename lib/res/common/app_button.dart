import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class AppButton extends StatelessWidget {
  final String? elevated;
  final IconData? icon;
  final double? radius;
  final double? width;
  final double? height;
  final void Function()? onPress;
  final String? name;
  const AppButton(
      {Key? key,
      this.name,
      this.elevated,
      this.icon,
      this.radius,
      this.onPress,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(AppColors.red),
        fixedSize: MaterialStatePropertyAll(
          Size(width!, height!),
        ),
        // fixedSize: MaterialStatePropertyAll(
        //   Size(screenWidth / 0.1, screenHeight / 16),
        // ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
      onPressed: onPress ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            elevated ?? "",
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
          if (icon != null)
            Icon(
              icon!,
              color: Colors.white,
              size: 20,
            ),
        ],
      ),
    );
  }
}
