import 'dart:io';

import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/color.dart';
import 'package:autogen/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  File? _userImage;
  final userImagePicker = ImagePicker();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalate.mainBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            onTap: () => Get.back(),
            child: SvgPicture.asset(
              'assets/icons/arrow_back.svg',
              height: 20,
              width: 20,
            ),
          ),
        ),
        title: Text(
          'Настройки',
          style: TextStyle(
            color: ColorPalate.mainYellowColor,
          ),
        ),
        backgroundColor: ColorPalate.mainBackgroundColor,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: AppScale.scaledHeight(0.03, context),
          ),
          Container(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppScale.scaledHeight(0.08, context),
                  width: AppScale.scaledWidth(0.3, context),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/person.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  height: 60,
                  width: AppScale.scaledWidth(0.6, context),
                  child: TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff6C6C6C)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalate.mainYellowColor,
                        ),
                      ),
                      contentPadding: const EdgeInsets.only(left: 0.0),
                      hintText: 'Имя',
                      hintStyle: FontStyles.regularStyle(
                        fontSize: 17,
                        fontFamily: 'Montserrat',
                        color: Color(0xffAAAEB7),
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppScale.scaledHeight(0.04, context),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: AppScale.scaledWidth(0.1, context),
            ),
            child: Text(
              'Ваш номер телефона',
              style: FontStyles.boldStyle(
                fontSize: 16,
                fontFamily: 'Motserrat',
                color: ColorPalate.mainYellowColor,
              ),
            ),
          ),
          SizedBox(
            height: AppScale.scaledHeight(0.02, context),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: AppScale.scaledWidth(0.1, context),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: AppScale.scaledWidth(0.05, context),
                vertical: AppScale.scaledHeight(0.02, context)),
            decoration: BoxDecoration(
              color: Color(0xff6C6C6C).withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
              // border: Border.all(color: ColorPalate.mainYellowColor),
            ),
            // padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.phone_android_outlined,
                    color: Color(0xffAAAEB7),
                  ),
                ),
                SizedBox(
                  width: AppScale.scaledWidth(0.05, context),
                ),
                Text(
                  '+99899 999 99 99',
                  style: FontStyles.mediumStyle(
                    fontSize: 20,
                    fontFamily: 'Monsterrat',
                    color: Color(0xffAAAEB7),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppScale.scaledHeight(0.03, context),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: AppScale.scaledWidth(0.1, context),
            ),
            child: Row(
              children: [
                Text(
                  'Выбрать язык',
                  style: FontStyles.boldStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    color: ColorPalate.mainYellowColor,
                  ),
                ),
                SizedBox(
                  width: AppScale.scaledWidth(0.04, context),
                ),
                Container(
                  width: 40,
                  height: 40,
                  child: SvgPicture.asset(
                    'assets/icons/russia.svg',
                    // color: Colors.greenAccent,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () => Get.back(),
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: AppScale.scaledWidth(0.1, context),
              ),
              padding: EdgeInsets.symmetric(
                  vertical: AppScale.scaledHeight(0.02, context)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorPalate.mainYellowColor,
              ),
              child: Center(
                child: Text(
                  'СОХРАНИТЬ ИЗМЕНЕНИЯ',
                  style: FontStyles.boldStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: AppScale.scaledHeight(0.05, context),
          )
        ],
      ),
    );
  }
}
