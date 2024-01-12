import 'package:flutter/material.dart';
import 'package:test_hotel/constants/colors.dart';

class ApplicationTexts {
  static const String hotel = 'Отель';
  static const String sfproDisplay = 'SFProDisplay';

  static const TextStyle largeTextStyle = TextStyle(
    color: ApplicationColors.blackTextColor,
    fontFamily: sfproDisplay,
    fontWeight: FontWeight.w500,
    fontSize: 22,
    height: 1.2,
  );

  static const TextStyle priceTextStyle = TextStyle(
    color: ApplicationColors.blackTextColor,
    fontFamily: sfproDisplay,
    fontWeight: FontWeight.w600,
    fontSize: 30,
    height: 1.2,
  );

  static const TextStyle blueTextStyle = TextStyle(
    color: ApplicationColors.blueTextColor,
    fontFamily: sfproDisplay,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 1.2,
  );

  static const TextStyle greyTextStyle = TextStyle(
    color: ApplicationColors.greyTextColor,
    fontFamily: sfproDisplay,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 1.2,
  );

  static const TextStyle headlineStyle = TextStyle(
    color: ApplicationColors.blackTextColor,
    fontFamily: sfproDisplay,
    fontWeight: FontWeight.w500,
    fontSize: 18,
    height: 1.2,
  );
}
