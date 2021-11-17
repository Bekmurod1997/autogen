import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/color.dart';
import 'package:autogen/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingThree extends StatefulWidget {
  @override
  _LandingThreeState createState() => _LandingThreeState();
}

class _LandingThreeState extends State<LandingThree> {
  bool isContainer = false;
  bool isAnimate = false;

  @override
  void initState() {
    print('this is  init three');
    secondAnimation();
    super.initState();
  }

  void secondAnimation() {
    Future.delayed(Duration(seconds: 1)).then((value) {
      setState(() {
        isContainer = true;
      });
    });
    firstAnimation();
  }

  void firstAnimation() {
    Future.delayed(Duration(seconds: 1)).then((value) {
      print('this is future method');
      setState(() {
        isAnimate = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          top: isAnimate ? AppScale.scaledHeight(0.08, context) : 0,
          right: isAnimate ? AppScale.scaledWidth(.45, context) : 0,
          child: isContainer
              ? Container(
                  height: isContainer
                      ? AppScale.scaledHeight(0.52, context)
                      : AppScale.scaledHeight(0.60, context),
                  width: AppScale.scaledWidth(.55, context),
                  decoration: BoxDecoration(
                    color: ColorPalate.mainYellowColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                )
              : Container(),
          duration: const Duration(seconds: 1),
        ),

        // Positioned(
        //   top: AppScale.scaledHeight(0.08, context),
        //   left: 0,
        //   child: Container(
        //     height: AppScale.scaledHeight(0.52, context),
        //     width: AppScale.scaledWidth(.55, context),
        //     decoration: BoxDecoration(
        //       color: ColorPalate.mainYellowColor,
        //       borderRadius: BorderRadius.only(
        //         topRight: Radius.circular(30),
        //         bottomRight: Radius.circular(30),
        //       ),
        //     ),
        //   ),
        // ),
        Column(
          children: [
            SizedBox(
              height: AppScale.scaledHeight(0.22, context),
            ),
            AnimatedOpacity(
              opacity: isContainer ? 1.0 : 0.2,
              duration: const Duration(seconds: 1),
              child: Center(
                child: Image.asset('assets/images/carrr.png'),
              ),
            ),
            SizedBox(
              height: AppScale.scaledHeight(0.14, context),
            ),
            Center(
              child: Text(
                'theBestAutoServicesTashkent'.tr,
                style: FontStyles.mediumStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: AppScale.scaledHeight(0.05, context),
            ),
            Center(
              child: Image.asset(
                'assets/images/auto_logo.png',
                height: AppScale.scaledHeight(
                  0.20,
                  context,
                ),
                width: AppScale.scaledWidth(0.50, context),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
