import 'package:autogen/constants/color.dart';
import 'package:autogen/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
      padding: const EdgeInsets.only(left: 22, right: 22, top: 22, bottom: 38),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        color: ColorPalate.mainYellowColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Truman barbershop',
            style: FontStyles.boldStyle(fontSize: 18, fontFamily: 'Montserrat'),
          ),
          Text(
            'ул. Лабзак, 12/1, Tashkent',
            style: FontStyles.boldStyle(fontSize: 14, fontFamily: 'Montserrat'),
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 1.4,
            color: Colors.black,
          ),
          SizedBox(height: 8),
          Text(
            'Дата посещения ',
            style:
                FontStyles.mediumStyle(fontSize: 18, fontFamily: 'Montserrat'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '03.12.2019',
                style: FontStyles.regularStyle(
                    fontSize: 12, fontFamily: 'Montserrat'),
              ),
              Text(
                '16:35',
                style: FontStyles.mediumStyle(
                    fontSize: 18, fontFamily: 'Montserrat'),
              ),
            ],
          ),
          Divider(
            thickness: 1.4,
            color: Colors.black,
          ),
          SizedBox(height: 8),
          Text(
            'Тип автомобиля ',
            style:
                FontStyles.mediumStyle(fontSize: 18, fontFamily: 'Montserrat'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'легковой ',
                style: FontStyles.regularStyle(
                    fontSize: 18, fontFamily: 'Montserrat'),
              ),
              SvgPicture.asset(
                'assets/icons/car_s.svg',
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
