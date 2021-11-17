import 'package:autogen/constants/app_scale.dart';
import 'package:flutter/material.dart';

class LogoLocation extends StatelessWidget {
  const LogoLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppScale.scaledWidth(0.04, context),
      right: 0,
      left: 0,
      child: Container(
        width: AppScale.scaledWidth(0.4, context),
        height: AppScale.scaledHeight(0.12, context),
        child: Image.asset('assets/images/AVTOGEN.png'),
      ),
    );
  }
}
