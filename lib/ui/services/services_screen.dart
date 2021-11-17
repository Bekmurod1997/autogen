import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/color.dart';
import 'package:autogen/ui/maps/map_screen.dart';
import 'package:autogen/ui/services/widgets/service_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceSceen extends StatefulWidget {
  @override
  State<ServiceSceen> createState() => _ServiceSceenState();
}

class _ServiceSceenState extends State<ServiceSceen> {
  int imageIndex = 1;

  @override
  void initState() {
    // imageChanger();
    Future.delayed(Duration(milliseconds: 1200)).then((value) {
      setState(() {
        imageIndex++;
      });
    });
    super.initState();
  }

  void imageChanger() {
    while (imageIndex < 5) {
      Future.delayed(Duration(seconds: 1)).then((value) {
        setState(() {
          print('imageIndex $imageIndex');
          imageIndex++;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalate.mainBackgroundColor,
      body: Column(children: [
        SizedBox(
          height: AppScale.scaledHeight(0.08, context),
        ),
        Center(
          child: Container(
            child: Image.asset(
              'assets/images/AVTOGEN.png',
              fit: BoxFit.contain,
              height: AppScale.scaledHeight(0.05, context),
              width: AppScale.scaledWidth(0.5, context),
            ),
          ),
        ),
        SizedBox(
          height: AppScale.scaledHeight(0.03, context),
        ),
        ServiceItem(
          iconUrl: 'assets/icons/car_s.svg',
          title: 'Мойка и химчистка ',
          onpress: () => Get.to(() => MapScreen()),
        ),
        SizedBox(
          height: AppScale.scaledHeight(0.025, context),
        ),
        ServiceItem(
          iconUrl: 'assets/icons/barber_s.svg',
          title: 'Барбершоп',
          onpress: () => print('barber'),
        ),
        SizedBox(
          height: AppScale.scaledHeight(0.025, context),
        ),
        ServiceItem(
          iconUrl: 'assets/icons/computer_s.svg',
          title: 'Компьютерная диагностика',
          onpress: () => print('computer'),
        ),
        SizedBox(
          height: AppScale.scaledHeight(0.025, context),
        ),
        ServiceItem(
          iconUrl: 'assets/icons/repair_s.svg',
          title: 'Кузовной ремонт ',
          onpress: () => print('repair'),
        ),
        SizedBox(
          height: AppScale.scaledHeight(0.025, context),
        ),
        ServiceItem(
          iconUrl: 'assets/icons/extra_s.svg',
          title: 'Дополнительный услуги ',
          onpress: () => print('extra'),
        ),
        Expanded(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              height: AppScale.scaledHeight(0.25, context),
              width: AppScale.scaledWidth(0.8, context),
              child: imageIndex % 2 == 1
                  ? Image.asset('assets/images/tyre.png')
                  : Image.asset('assets/images/half_car.png'),
            ),
          ),
        ),
      ]),
    );
  }
}
