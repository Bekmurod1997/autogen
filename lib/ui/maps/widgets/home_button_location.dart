import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/color.dart';
import 'package:autogen/ui/services/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeButtonLocation extends StatelessWidget {
  const HomeButtonLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: AppScale.scaledHeight(0.05, context),
      child: GestureDetector(
        onTap: () => Get.to(() => ServiceSceen()),
        child: Container(
          padding: EdgeInsets.only(
              // left: AppScale.scaledWidth(0.03, context),
              ),
          height: AppScale.scaledHeight(0.07, context),
          width: AppScale.scaledWidth(0.07, context),
          decoration: BoxDecoration(
            color: ColorPalate.mainYellowColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SvgPicture.asset(
              'assets/icons/home.svg',
              // height: 20,
              // width: 20,
              height: AppScale.scaledHeight(0.035, context),
              width: AppScale.scaledWidth(0.035, context),
            ),
          ),
        ),
      ),
    );
  }
}
