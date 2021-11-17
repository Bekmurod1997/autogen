import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/color.dart';
import 'package:autogen/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ServiceItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback onpress;
  ServiceItem(
      {required this.iconUrl, required this.title, required this.onpress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: AppScale.scaledWidth(0.09, context)),
        height: AppScale.scaledHeight(0.07, context),
        decoration: BoxDecoration(
          color: ColorPalate.mainYellowColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: AppScale.scaledWidth(0.05, context),
              ),
              child: SvgPicture.asset(iconUrl),
            ),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: FontStyles.semiBoldStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
