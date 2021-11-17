import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/color.dart';
import 'package:autogen/constants/fonts.dart';
import 'package:autogen/ui/landing/auth/verify_number.dart';
import 'package:autogen/ui/landing/auth/widgets/auth_textformfile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppScale.scaledHeight(0.08, context),
        ),
        Container(
          child: Image.asset(
            'assets/images/AVTOGEN.png',
            fit: BoxFit.contain,
            height: AppScale.scaledHeight(0.05, context),
            width: AppScale.scaledWidth(0.5, context),
          ),
        ),
        SizedBox(
          height: AppScale.scaledHeight(0.25, context),
        ),
        AuthTextFromField(
          second: false,
          IconUrl: 'assets/icons/Groupname.svg',
          hintText: 'имя',
        ),
        SizedBox(
          height: AppScale.scaledHeight(0.025, context),
        ),
        AuthTextFromField(
          second: true,
          IconUrl: 'assets/icons/Groupphone.svg',
          hintText: 'номер телефона ',
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            Get.to(() => VerifyNumberScreen());
          },
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: AppScale.scaledWidth(0.09, context)),
            height: AppScale.scaledHeight(0.07, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                color: ColorPalate.mainYellowColor,
                width: 2,
              ),
            ),
            child: Center(
              child: Text(
                'singUp'.tr,
                style: FontStyles.mediumStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: AppScale.scaledHeight(0.05, context),
        ),
      ],
    );
  }
}
