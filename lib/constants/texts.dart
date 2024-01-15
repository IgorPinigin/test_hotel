import 'package:flutter/material.dart';
import 'package:test_hotel/constants/colors.dart';

class ApplicationTexts {
  static const String hotel = 'Отель';
  static const String aboutHotel = 'Об отеле';
  static const String sfproDisplay = 'SFProDisplay';
  static const String ruble = '₽';
  static const String from = 'от';
  static const String mostImportant = 'Самое необходимое';
  static const String toSelectRoom = 'К выбору номера';
  static const String conveniences = 'Удобства';
  static const String whatIsIncluded = 'Что включено';
  static const String whatIsNotIncluded = 'Что не включено';

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

  static const TextStyle buttonTextStyle = TextStyle(
    color: ApplicationColors.whiteColor,
    fontFamily: sfproDisplay,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.1,
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

  static const TextStyle infoAboutHotelStyle = TextStyle(
    color: ApplicationColors.blackTextColor90,
    fontFamily: sfproDisplay,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.2,
  );

  static const TextStyle infoTileStyle = TextStyle(
    color: ApplicationColors.tileGreyTextColor,
    fontFamily: sfproDisplay,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.2,
  );

  static const TextStyle greyTextFieldStyle = TextStyle(
    color: ApplicationColors.greyTextFieldColor,
    fontFamily: sfproDisplay,
    fontWeight: FontWeight.w400,
    fontSize: 17,
    height: 1.2,
  );
}
