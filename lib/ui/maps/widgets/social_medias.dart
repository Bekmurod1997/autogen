import 'package:autogen/constants/app_scale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class SocialMedias extends StatelessWidget {
  final String iconUrl;
  final VoidCallback onpress;
  SocialMedias({required this.iconUrl, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: AppScale.scaledHeight(0.06, context),
        width: AppScale.scaledWidth(0.08, context),
        child: SvgPicture.asset(iconUrl),
      ),
    );
  }
}
