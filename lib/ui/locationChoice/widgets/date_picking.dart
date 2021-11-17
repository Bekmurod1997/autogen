import 'dart:async';

import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/color.dart';
import 'package:autogen/constants/fonts.dart';
import 'package:autogen/constants/times.dart';
import 'package:autogen/controllers/slide_controller.dart';
import 'package:autogen/ui/services/services_screen.dart';
import 'package:flutter/material.dart';

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DatePickingScreen extends StatefulWidget {
  @override
  _DatePickingScreenState createState() => _DatePickingScreenState();
}

class _DatePickingScreenState extends State<DatePickingScreen> {
  DateTime? _selectedValue;
  DateTime? _dateTime;
  int _selectedItemIndex = 0;
  final SlideButton slideController = Get.find<SlideButton>();
  DatePickerController _controller = DatePickerController();

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
                            '17:06',
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
    return Obx(() {
      return Stack(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: AppScale.scaledHeight(0.01, context),
              ),
              DefaultTextStyle(
                style: TextStyle(color: Colors.white),
                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Color(0xff4E4E4E),
                  selectedTextColor: Colors.white,
                  dateTextStyle: TextStyle(
                    color: Colors.white,
                  ),
                  dayTextStyle: TextStyle(
                    color: Colors.white,
                  ),
                  monthTextStyle: TextStyle(
                    color: Colors.white,
                  ),
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
              ),
              SizedBox(
                height: AppScale.scaledHeight(0.03, context),
              ),
              Container(
                height: AppScale.scaledHeight(0.2, context),

                child: ListWheelScrollView.useDelegate(
                    onSelectedItemChanged: (index) {
                      setState(() {
                        _selectedItemIndex = index;
                      });
                      // print(TimesClass.times[_selectedItemIndex]);
                    },
                    itemExtent: 80,
                    childDelegate: ListWheelChildLoopingListDelegate(
                      children: TimesClass.times
                          .map(
                            (e) => Text(
                              e,
                              style: FontStyles.boldStyle(
                                fontSize: _selectedItemIndex ==
                                        TimesClass.times.indexOf(e)
                                    ? 48
                                    : 36,
                                fontFamily: 'Montserrat',
                                color: _selectedItemIndex ==
                                        TimesClass.times.indexOf(e)
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          )
                          .toList(),
                    )),

                // child: ListWheelScrollView(

                //   diameterRatio: 5,
                //   itemExtent: 80,
                //   children: [
                //     ...times.map(
                //       (e) => Text(e),
                //     ),
                //   ],
                // ),
              ),
              SizedBox(height: AppScale.scaledHeight(0.03, context)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/icons/bell.svg'),
                  SizedBox(width: 15),
                  Text(
                    'Напомнить за 30 минут',
                    style: FontStyles.mediumStyle(
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: AppScale.scaledHeight(0.015, context)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      height: AppScale.scaledHeight(0.05, context),
                      width: AppScale.scaledWidth(0.3, context),
                      decoration: BoxDecoration(
                        color: ColorPalate.mainYellowColor,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: ColorPalate.mainYellowColor,
                          width: 4,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset('assets/images/nn.svg'),
                          Text(
                            'Отменить',
                            style: FontStyles.boldStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      slideController.loadingIndicatorChanger();
                      print(slideController.loadingIndicatior.value);

                      startTimer();
                      print(slideController.loadingIndicatior.value);
                    },
                    child: Container(
                      height: AppScale.scaledHeight(0.05, context),
                      width: AppScale.scaledWidth(0.3, context),
                      decoration: BoxDecoration(
                        color: ColorPalate.mainYellowColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset('assets/images/nn2.svg'),
                          Text(
                            'Дальше',
                            style: FontStyles.boldStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            left: AppScale.scaledWidth(.40, context),
            top: 200,
            child: slideController.loadingIndicatior.value
                ? Container(
                    height: 50,
                    width: 50,
                    child: CircularProgressIndicator(),
                  )
                : Container(),
          ),
        ],
      );
    });
  }
}
