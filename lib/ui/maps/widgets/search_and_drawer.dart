import 'package:autogen/constants/app_scale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchAndDrawerLocation extends StatefulWidget {
  @override
  _SearchAndDrawerLocationState createState() =>
      _SearchAndDrawerLocationState();
}

class _SearchAndDrawerLocationState extends State<SearchAndDrawerLocation> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppScale.scaledWidth(0.22, context),
      right: 0,
      left: 0,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: AppScale.scaledWidth(0.08, context)),
        width: AppScale.scaledWidth(0.8, context),
        height: AppScale.scaledHeight(0.07, context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(41),
          color: Colors.white,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppScale.scaledWidth(0.03, context),
          ),
          child: Row(
            children: [
              Container(
                width: AppScale.scaledWidth(0.1, context),
                child: SvgPicture.asset('assets/icons/drewer.svg'),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: AppScale.scaledWidth(0.008, context)),
                width: AppScale.scaledWidth(0.55, context),
                // height: AppScale.scaledHeight(0.01, context),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                width: AppScale.scaledWidth(0.1, context),
                child: SvgPicture.asset('assets/icons/search.svg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
