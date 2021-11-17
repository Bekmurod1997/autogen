import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/color.dart';
import 'package:autogen/constants/fonts.dart';
import 'package:autogen/controllers/slide_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class FirstHalf extends StatelessWidget {
  final SlideButton slideController = Get.find<SlideButton>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPalate.mainYellowColor
          .withOpacity(slideController.loadingIndicatior.value ? 0.7 : 1),
      width: double.infinity,
      height: AppScale.scaledHeight(0.44, context),
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/lo.png',
              height: AppScale.scaledHeight(0.37, context),
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            left: AppScale.scaledWidth(0.22, context),
            top: AppScale.scaledHeight(0.04, context),
            child: Container(
                height: AppScale.scaledHeight(0.4, context),
                width: AppScale.scaledWidth(0.5, context),
                child: Image.asset('assets/images/chair.png')),
          ),
          Positioned(
            top: AppScale.scaledWidth(0.18, context),
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: AppScale.scaledWidth(0.06, context),
              ),
              width: AppScale.scaledWidth(0.8, context),
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: SvgPicture.asset(
                      'assets/icons/arrow_back.svg',
                      color: Colors.white,
                    ),
                  ),
                  Container(),
                  // Container(
                  //   height: 50,
                  //   width: 60,
                  //   padding:
                  //       const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  //   decoration: BoxDecoration(
                  //     color: ColorPalate.mainYellowColor.withOpacity(
                  //         slideController.loadingIndicatior.value ? 0.7 : 1),
                  //     shape: BoxShape.circle,
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.black.withOpacity(0.1),
                  //         spreadRadius: 3,
                  //         blurRadius: 7,
                  //         offset: Offset(0, 2), // changes position of shadow
                  //       ),
                  //     ],
                  //   ),
                  //   child: Center(
                  //     child: Icon(
                  //       Icons.more_vert,
                  //       size: 24,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          Positioned(
            left: AppScale.scaledWidth(0.05, context),
            bottom: AppScale.scaledHeight(0.05, context),
            child: Text(
              'Truman Barbershop',
              style: FontStyles.boldStyle(
                fontSize: 18,
                fontFamily: 'Montserrat',
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: AppScale.scaledWidth(0.05, context),
            bottom: AppScale.scaledHeight(0.03, context),
            child: Text(
              'ул. Лабзак, 12/1, Tashkent',
              style: FontStyles.boldStyle(
                fontSize: 14,
                fontFamily: 'Montserrat',
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
              right: AppScale.scaledWidth(0.05, context),
              bottom: AppScale.scaledHeight(0.03, context),
              child: RichText(
                text: TextSpan(
                  text: '9-18 ',
                  style: FontStyles.boldStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Часов',
                      style: TextStyle(
                        fontFamily: 'Motserrat',
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
