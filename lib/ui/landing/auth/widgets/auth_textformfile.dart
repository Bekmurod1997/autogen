import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/color.dart';
import 'package:autogen/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthTextFromField extends StatelessWidget {
  final String IconUrl;
  final String hintText;
  bool second = false;
  AuthTextFromField({
    required this.IconUrl,
    required this.hintText,
    required this.second,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: AppScale.scaledWidth(0.09, context)),
      height: AppScale.scaledHeight(0.08, context),
      decoration: BoxDecoration(
        color: ColorPalate.mainYellowColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: AppScale.scaledWidth(0.06, context),
            ),
            child: SvgPicture.asset(
              IconUrl,
              height: AppScale.scaledHeight(
                  second == true ? 0.038 : 0.026, context),
            ),
          ),
          SizedBox(
            width: AppScale.scaledWidth(0.03, context),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 25),
            child: VerticalDivider(
              color: Colors.white30,
              thickness: 1,
            ),
          ),
          Container(
            width: AppScale.scaledWidth(0.60, context),
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: hintText,
                hintStyle: FontStyles.mediumStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  color: Colors.white38,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
