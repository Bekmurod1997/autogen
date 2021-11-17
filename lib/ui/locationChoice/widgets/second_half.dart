import 'dart:async';

import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/color.dart';
import 'package:autogen/constants/fonts.dart';
import 'package:autogen/controllers/slide_controller.dart';
import 'package:autogen/ui/locationChoice/widgets/date_picking.dart';
import 'package:autogen/ui/locationChoice/widgets/price.dart';
import 'package:autogen/ui/services/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:get/get.dart';

class SecondHalf extends StatefulWidget {
  const SecondHalf({Key? key}) : super(key: key);

  @override
  _SecondHalfState createState() => _SecondHalfState();
}

class _SecondHalfState extends State<SecondHalf> {
  final SlideButton slideController = Get.find<SlideButton>();
  void confirmed() {
    print('Slider confirmed!');
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (t) {
      setState(() {
        slideController.loadingIndicatior.value = false; //set loading to false
      });
      t.cancel(); //stops the timer
      Timer.periodic(const Duration(milliseconds: 400), (timer) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Container(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 24, bottom: 32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Ваш запрос принят',
                        style: FontStyles.mediumStyle(
                            fontSize: 24, fontFamily: 'Montserrat'),
                      ),
                      SizedBox(height: 20),
                      Divider(),
                      SizedBox(height: 17),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Дата',
                            style: FontStyles.semiBoldStyle(
                                fontSize: 14, fontFamily: 'Montserrat'),
                          ),
                          Text(
                            '17.:06',
                            style: FontStyles.semiBoldStyle(
                                fontSize: 14, fontFamily: 'Montserrat'),
                          ),
                        ],
                      ),
                      SizedBox(height: 17),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Время',
                            style: FontStyles.semiBoldStyle(
                                fontSize: 14, fontFamily: 'Montserrat'),
                          ),
                          Text(
                            '10:30',
                            style: FontStyles.semiBoldStyle(
                                fontSize: 14, fontFamily: 'Montserrat'),
                          ),
                        ],
                      ),
                      SizedBox(height: 47),
                      Divider(),
                      SizedBox(height: 26),
                      Center(
                        child: InkWell(
                          onTap: () {
                            slideController.isTap.value = false;
                            slideController.datePicker.value = false;
                            slideController.isSelected.value = false;
                            Get.to(() => ServiceSceen());
                          },
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              color: Color(0xff049613),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            });

        timer.cancel();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppScale.scaledHeight(0.56, context),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppScale.scaledWidth(0.07, context),
        ),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (slideController.isTap.value == false &&
                  slideController.datePicker.value == false)
                Column(
                  children: [
                    SizedBox(
                      height: AppScale.scaledHeight(0.05, context),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('pressed ');
                        slideController.isSelected.value = false;
                        slideController.firstChanger();
                      },
                      child: Container(
                        width: double.infinity,
                        height: AppScale.scaledHeight(0.1, context),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: ColorPalate.mainYellowColor,
                            width: 1.5,
                          ),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'seeServices'.tr,
                                style: FontStyles.mediumStyle(
                                  fontSize: 18,
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                ),
                              ),
                              SvgPicture.asset(
                                'assets/icons/next_i.svg',
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              if (slideController.datePicker.value) DatePickingScreen(),
              if (slideController.isTap.value == true) PriceScreen(),
              SizedBox(
                height: AppScale.scaledHeight(0.05, context),
              ),
              if (slideController.isSelected.value &&
                  slideController.datePicker.value == false)
                ConfirmationSlider(
                  foregroundColor: Colors.white24,
                  text: 'Прямо сейчас',
                  textStyle: FontStyles.boldStyle(
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      color: Colors.white),
                  backgroundColor: ColorPalate.mainYellowColor,
                  width: AppScale.scaledWidth(0.85, context),
                  onConfirmation: () => startTimer(),
                  sliderButtonContent: Container(
                    padding: const EdgeInsets.all(19),
                    child: SvgPicture.asset(
                      'assets/icons/d_arrow.svg',
                      height: 10,
                      width: 10,
                    ),
                  ),
                ),
              SizedBox(
                height: AppScale.scaledHeight(0.03, context),
              ),
              if (slideController.isSelected.value &&
                  slideController.datePicker.value == false)
                ConfirmationSlider(
                  foregroundColor: Colors.white24,
                  text: 'Выбрать время ',
                  textStyle: FontStyles.boldStyle(
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      color: Colors.white),
                  backgroundColor: ColorPalate.mainYellowColor,
                  width: AppScale.scaledWidth(0.85, context),
                  onConfirmation: () {
                    slideController.datePickerChanger();
                  },
                  sliderButtonContent: Container(
                    padding: const EdgeInsets.all(19),
                    child: SvgPicture.asset(
                      'assets/icons/d_arrow.svg',
                      height: 10,
                      width: 10,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
