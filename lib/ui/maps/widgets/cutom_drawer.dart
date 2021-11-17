import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/color.dart';
import 'package:autogen/constants/fonts.dart';
import 'package:autogen/ui/maps/widgets/drewer_option.dart';
import 'package:autogen/ui/maps/widgets/social_medias.dart';
import 'package:autogen/ui/orders/my_orders.dart';
import 'package:autogen/ui/services/services_screen.dart';
import 'package:autogen/ui/settings/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.62,
      height: MediaQuery.of(context).size.height,
      child: Drawer(
        child: Container(
          color: ColorPalate.mainYellowColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppScale.scaledHeight(0.08, context),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: AppScale.scaledWidth(0.04, context),
                  right: AppScale.scaledWidth(0.03, context),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Container(
                        width: AppScale.scaledWidth(0.05, context),
                        height: AppScale.scaledHeight(0.025, context),
                        child: SvgPicture.asset('assets/icons/x.svg'),
                      ),
                    ),
                    Container(
                      width: AppScale.scaledWidth(0.45, context),
                      height: AppScale.scaledHeight(0.025, context),
                      child: SvgPicture.asset('assets/icons/avtogen_b.svg'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppScale.scaledHeight(0.05, context),
              ),
              DrawerOption(
                title: 'Главная',
                onpress: () => Get.to(
                  () => ServiceSceen(),
                ),
              ),
              DrawerOption(
                title: 'Мои заказы',
                onpress: () => Get.to(() => MyOrders()),
              ),
              DrawerOption(
                title: 'Настройки',
                onpress: () => Get.to(() => SettingScreen()),
              ),
              DrawerOption(
                title: 'Выход',
                onpress: () {},
              ),
              SizedBox(
                height: AppScale.scaledHeight(0.15, context),
              ),
              Container(
                // color: Colors.red,
                height: AppScale.scaledHeight(.25, context),
                width: AppScale.scaledWidth(100, context),
                child: Image.asset(
                  'assets/images/02.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: AppScale.scaledHeight(0.1, context),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: AppScale.scaledWidth(0.042, context),
                ),
                child: Text(
                  '+99897009070',
                  style: FontStyles.semiBoldStyle(
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: AppScale.scaledHeight(0.007, context),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: AppScale.scaledWidth(0.042, context),
                ),
                child: Text(
                  '+998977254747',
                  style: FontStyles.semiBoldStyle(
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: AppScale.scaledHeight(0.021, context),
              ),
              Container(
                height: AppScale.scaledHeight(0.06, context),
                padding: EdgeInsets.only(
                  left: AppScale.scaledWidth(0.042, context),
                  right: AppScale.scaledWidth(0.042, context),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocialMedias(
                        iconUrl: 'assets/icons/facebook.svg',
                        onpress: () => print('f')),
                    SocialMedias(
                        iconUrl: 'assets/icons/instagram.svg',
                        onpress: () => print('i')),
                    SocialMedias(
                        iconUrl: 'assets/icons/telegram.svg',
                        onpress: () => print('t')),
                    SocialMedias(
                        iconUrl: 'assets/icons/email.svg',
                        onpress: () => print('e')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
