import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/color.dart';
import 'package:autogen/constants/fonts.dart';
import 'package:autogen/controllers/slide_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class PriceScreen extends StatefulWidget {
  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  var priceName = ['Premium', 'Gold', 'Silver', 'Fade'];

  var timeSpend = ['45 min', '30 min', '45 min', '45 min'];

  void confirmed() {
    print('Slider confirmed!');
  }

  int selectedButton = 0;
  final SlideButton slideController = Get.find<SlideButton>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: AppScale.scaledHeight(0.02, context),
          ),
          Text(
            'ПРАЙС ',
            style: FontStyles.semiBoldStyle(
              fontSize: 18,
              fontFamily: 'Montserrat',
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: AppScale.scaledHeight(0.02, context),
          ),
          Container(
            height: AppScale.scaledHeight(0.28, context),
            // color: Colors.green,
            width: double.infinity,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: priceName.length,
              itemBuilder: (context, index) => Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            priceName[index],
                            style: FontStyles.regularStyle(
                              fontSize: 14,
                              fontFamily: 'Monserrat',
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            timeSpend[index],
                            style: FontStyles.regularStyle(
                              fontSize: 10,
                              fontFamily: 'Monserrat',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedButton = index;
                          });
                        },
                        child: Container(
                          height: AppScale.scaledHeight(0.035, context),
                          width: AppScale.scaledWidth(0.24, context),
                          decoration: BoxDecoration(
                            color: selectedButton == index
                                ? ColorPalate.mainYellowColor
                                : ColorPalate.mainBackgroundColor,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: ColorPalate.mainYellowColor,
                              width: 4,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Выбрать',
                              style: FontStyles.mediumStyle(
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    color: Color(0xff6C6C6C),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: FontStyles.regularStyle(
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                ),
              ),
              Text(
                '120.000 сум',
                style: FontStyles.boldStyle(
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Divider(
            thickness: 2,
            color: Color(0xff6C6C6C),
          ),
          SizedBox(height: AppScale.scaledHeight(0.02, context)),
          Container(
            child: ConfirmationSlider(
              foregroundColor: Colors.white24,
              text: 'Подать заявку',
              backgroundColor: ColorPalate.mainYellowColor,
              textStyle: FontStyles.boldStyle(
                  fontSize: 18, fontFamily: 'Montserrat', color: Colors.white),
              width: AppScale.scaledWidth(0.85, context),
              onConfirmation: () {
                slideController.firstChanger();
                slideController.sliderChanger();
              },
              sliderButtonContent: Container(
                padding: const EdgeInsets.all(19),
                child: SvgPicture.asset(
                  'assets/icons/d_arrow.svg',
                  height: 5,
                  width: 5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
