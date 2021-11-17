import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/color.dart';
import 'package:autogen/constants/fonts.dart';
import 'package:autogen/controllers/slide_controller.dart';
import 'package:autogen/ui/locationChoice/widgets/first_half.dart';
import 'package:autogen/ui/locationChoice/widgets/second_half.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class LocationChoiceSceen extends StatefulWidget {
  @override
  _LocationChoiceSceenState createState() => _LocationChoiceSceenState();
}

class _LocationChoiceSceenState extends State<LocationChoiceSceen> {
  final SlideButton slideController = Get.find<SlideButton>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: ColorPalate.mainBackgroundColor
              .withOpacity(slideController.loadingIndicatior.value ? 0.7 : 1),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FirstHalf(),
              SecondHalf(),
            ],
          ),
        ));
  }
}
