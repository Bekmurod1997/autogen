import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/fonts.dart';
import 'package:flutter/material.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final VoidCallback onpress;
  DrawerOption({required this.title, required this.onpress});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: AppScale.scaledWidth(0.08, context),
        bottom: AppScale.scaledHeight(0.007, context),
      ),
      child: ListTile(
        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        onTap: onpress,
        contentPadding: EdgeInsets.zero,
        title: Text(
          title,
          style: FontStyles.mediumStyle(
            fontSize: 18,
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
