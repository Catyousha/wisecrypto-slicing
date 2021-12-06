import 'package:flutter/cupertino.dart';

import 'app_color.dart';

class AppText {
  static const fontFamily = "Mulish";
  static const defaultTextColor = AppColor.black;

  /// Font weight: w200
  static const extraLight = FontWeight.w200;
  /// Font weight: w300
  static const light = FontWeight.w300;
  /// Font weight: w400
  static const regular = FontWeight.w400;
  /// Font weight: w500
  static const medium = FontWeight.w500;
  /// Font weight: w600
  static const semiBold = FontWeight.w600;
  /// Font weight: w700
  static const bold = FontWeight.w700;
  /// Font weight: w800
  static const extraBold = FontWeight.w800;
  /// Font weight: w900
  static const black = FontWeight.w900;

  /// Font size: 10
  static const textExtraSmall = TextStyle(
    color: defaultTextColor,
    fontFamily: fontFamily,
    fontSize: 10,
  );

  /// Font size: 12
  static const textSmall = TextStyle(
    color: defaultTextColor,
    fontFamily: fontFamily,
    fontSize: 12,
  );

  /// Font size: 14
  static const textNormal = TextStyle(
    color: defaultTextColor,
    fontFamily: fontFamily,
    fontSize: 14,
  );

  /// Font size: 16
  static const textMedium = TextStyle(
    color: defaultTextColor,
    fontFamily: fontFamily,
    fontSize: 16,
  );

  /// Font size: 20
  static const textSemiLarge = TextStyle(
    color: defaultTextColor,
    fontFamily: fontFamily,
    fontSize: 20,
  );

  /// Font size: 24
  static const textLarge = TextStyle(
    color: defaultTextColor,
    fontFamily: fontFamily,
    fontSize: 24,
  );

  /// Font size: 32
  static const textExtraLarge = TextStyle(
    color: defaultTextColor,
    fontFamily: fontFamily,
    fontSize: 32,
  );
}
