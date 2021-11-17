import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/color.dart';
import 'package:flutter/material.dart';

class LandingOne extends StatefulWidget {
  @override
  _LandingOneState createState() => _LandingOneState();
}

class _LandingOneState extends State<LandingOne> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: AppScale.scaledHeight(.25, context),
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
            SizedBox(
              height: AppScale.scaledHeight(.18, context),
            ),
            Expanded(
              child: Container(
                width: AppScale.scaledWidth(0.50, context),
                decoration: BoxDecoration(
                  color: ColorPalate.mainYellowColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: 0,
          bottom: AppScale.scaledHeight(0.07, context),
          child: Container(
            width: AppScale.scaledWidth(0.69, context),
            child: Image.asset(
              'assets/images/car_right.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
