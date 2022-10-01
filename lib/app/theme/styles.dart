import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:weather_app/app/app.dart';

/// A chunk of styles used in the application.
/// Will be ignored for test since all are static values and would not change.
// coverage:ignore-file
abstract class Styles {
  static RoundedRectangleBorder buttonShapeBorder = RoundedRectangleBorder(
    side: BorderSide(
      color: Colors.white,
      width: Dimens.one,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.circular(
      Dimens.fifty,
    ),
  );

  static RoundedRectangleBorder border15 = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(
      Dimens.fifteen,
    ),
  );

  // light theme data
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: ColorsValue.primaryColor,
    backgroundColor: ColorsValue.backgroundColor,
    primarySwatch: const MaterialColor(
      ColorsValue.primaryColorHex,
      ColorsValue.primaryColorSwatch,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Merriweather Sans',
    buttonTheme: buttonThemeData,
    elevatedButtonTheme: elevatedButtonTheme,
    textButtonTheme: textButtonTheme,
  );

  // dark theme data
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: ColorsValue.primaryColor,
    backgroundColor: ColorsValue.backgroundColor,
    primarySwatch: const MaterialColor(
      ColorsValue.primaryColorHex,
      ColorsValue.primaryColorSwatch,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Merriweather Sans',
    buttonTheme: buttonThemeData,
    elevatedButtonTheme: elevatedButtonTheme,
    textButtonTheme: textButtonTheme,
  );

  static ButtonThemeData buttonThemeData = ButtonThemeData(
      buttonColor: ColorsValue.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Dimens.fifty,
        ),
      ));

  static TextStyle whiteLight14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontSize: Dimens.fourteen,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );
  static TextStyle whiteLight12 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontSize: Dimens.twelve,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );

  static TextStyle errorStyle = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.normal,
    color: ColorsValue.textFieldErrorColor,
  );

  static TextStyle formFieldTextStyle14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blackColor,
    fontSize: Dimens.fourteen,
  );

  static TextStyle formFieldTextStyle18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blackColor,
    fontSize: Dimens.eighteen,
  );

  static TextStyle formFieldTextStyle20 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blackColor,
    fontSize: Dimens.twenty,
  );

  static TextStyle formFieldTextStyle16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blackColor,
    fontSize: Dimens.sixTeen,
  );

  static TextStyle lightGrey15 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyMainTitleColor,
    fontSize: Dimens.fifteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalPrimary14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.primaryColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalPrimary12 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.primaryColor,
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalPrimary10 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.primaryColor,
    fontSize: Dimens.ten,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalPrimary16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.primaryColor,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumPrimary14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.primaryColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumPrimary16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.primaryColor,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle boldPrimary14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.primaryColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.bold,
  );

  static TextStyle boldPrimary15 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.primaryColor,
    fontSize: Dimens.fifteen,
    fontWeight: FontWeight.bold,
  );

  static TextStyle boldPrimary16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.primaryColor,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.bold,
  );

  static TextStyle boldPrimary20 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.primaryColor,
    fontSize: Dimens.twenty,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalLightGrey10 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.ten,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalLightGrey12 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.normal,
  );

  static TextStyle semiBoldGreen18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w600,
    color: ColorsValue.greenColor,
    fontSize: Dimens.eighteen,
  );

  static TextStyle semiBoldBrown18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w600,
    color: ColorsValue.brownColor,
    fontSize: Dimens.eighteen,
  );

  static TextStyle normalLightGrey22 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.twentyTwo,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalLightGrey24 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.twentyFour,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalLightGrey26 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.twentySix,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalLightGrey28 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.twentyEight,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalLightGrey30 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.thirty,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalLightGrey14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalLightGrey16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.normal,
  );
  static TextStyle normalGrey12 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.greyColor,
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.normal,
  );
  static TextStyle normalGrey14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.greyColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.normal,
  );
  static TextStyle normalGrey16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.greyColor,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalLightGrey18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: GetPlatform.isMobile ? Dimens.sixTeen : Dimens.eighteen,
    fontWeight: FontWeight.normal,
  );
  static TextStyle normalGrey18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.eighteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalBlue16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: Colors.blue,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalBlue18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: Colors.blue,
    fontSize: Dimens.eighteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalLightGrey20 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: GetPlatform.isMobile ? Dimens.eighteen : Dimens.twenty,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalLightGrey12Underline = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.underline,
  );

  static TextStyle mediumLightGrey12 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumLightGrey14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumLightGrey15 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.fifteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumLightGrey16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumLightGrey35 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.thirtyFive,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumLightWhite35 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.whiteTableHeadingColor,
    fontSize: Dimens.thirtyFive,
    fontWeight: FontWeight.bold,
  );

  static TextStyle boldWhite140 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.whiteTableHeadingColor,
    fontSize: Dimens.oneHundredFifty - Dimens.ten,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumLightWhite30 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.whiteTableHeadingColor,
    fontSize: Dimens.thirtyFive,
    fontWeight: FontWeight.bold,
  );

  static TextStyle mediumGrey16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.greyColor,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumRed16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.redColor,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumGrey14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.greyColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumGrey17 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.greyColor,
    fontSize: Dimens.seventeen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumLightGrey18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.eighteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumDarkGrey18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.darkGreyColor,
    fontSize: Dimens.eighteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumDarkGrey40 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.darkGreyColor,
    fontSize: Dimens.fourty,
    fontWeight: FontWeight.bold,
  );

  static TextStyle mediumDarkGrey16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.darkGreyColor,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumLightGrey20 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.twenty,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumLightGrey22 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.twentyTwo,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumLightGrey24 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.twentyFour,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumLightGrey26 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.lightGreyColor,
    fontSize: Dimens.twentySix,
    fontWeight: FontWeight.normal,
  );

  static TextStyle boldWhite15 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: Colors.white,
    fontSize: Dimens.fifteen,
  );

  static TextStyle boldWhite20 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: Colors.white,
    fontSize: GetPlatform.isMobile ? Dimens.sixTeen : Dimens.twenty,
  );

  static TextStyle boldWhite24 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: Colors.white,
    fontSize: Dimens.twentyFour,
  );

  static TextStyle semiBoldBlack24 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontSize: Dimens.twentyFour,
  );

  static TextStyle semiBoldBlack20 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontSize: Dimens.twenty,
  );

  static TextStyle semiBoldBlack14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontSize: Dimens.fourteen,
  );

  static TextStyle semiBoldBlack16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontSize: Dimens.sixTeen,
  );

  static TextStyle semiBoldPrimary18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w600,
    color: ColorsValue.primaryColor,
    fontSize: Dimens.eighteen,
  );
  static TextStyle semiBoldBlack22 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontSize: Dimens.twentyTwo,
  );
  static TextStyle semiBoldGrey16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w600,
    color: ColorsValue.greyColor,
    fontSize: Dimens.sixTeen,
  );

  static TextStyle semiBoldGrey18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w600,
    color: ColorsValue.greyColor,
    fontSize: Dimens.eighteen,
  );

  static TextStyle semiBoldPrimary16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w600,
    color: ColorsValue.primaryColor,
    fontSize: Dimens.sixTeen,
  );
  static TextStyle semiBoldPrimary14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w600,
    color: ColorsValue.primaryColor,
    fontSize: Dimens.fourteen,
  );

  static TextStyle semiBoldBlack34 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontSize: Dimens.thirtyFour,
  );

  static TextStyle boldWhite28 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: Dimens.twentyEight,
  );

  static TextStyle boldWhite32 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: Dimens.thirtyTwo,
  );
  static TextStyle boldWhite36 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: GetPlatform.isMobile ? Dimens.twentyTwo : Dimens.thirtySix,
  );

  static TextStyle boldWhite40 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.fourty,
  );

  static TextStyle boldBlack12 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: Dimens.twelve,
  );

  static TextStyle boldBlack14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: Dimens.fourteen,
  );

  static TextStyle boldBlack16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: Dimens.sixTeen,
  );

  static TextStyle boldBlack18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: Dimens.eighteen,
  );

  static TextStyle boldBlack20 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: Dimens.twenty,
  );

  static TextStyle boldBlack24 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: GetPlatform.isMobile ? Dimens.twenty : Dimens.twentyFour,
  );

  static TextStyle boldBlack30 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: Dimens.thirty,
  );

  static TextStyle boldBlack36 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: Dimens.thirtySix,
  );

  static TextStyle normalBlack10 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontSize: Dimens.ten,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalBlack4 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontSize: Dimens.four,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalBlue3 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blueColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalBlack12 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.normal,
  );

  static TextStyle requestLightMessage = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalBlack14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalBlack16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blackColor,
    fontSize: Dimens.sixTeen,
  );

  static TextStyle normalBlack18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blackColor,
    fontSize: GetPlatform.isMobile ? Dimens.sixTeen : Dimens.eighteen,
  );

  static TextStyle normalBlack20 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blackColor,
    fontSize: Dimens.twenty,
  );

  static TextStyle normalBlack22 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blackColor,
    fontSize: GetPlatform.isMobile ? Dimens.twenty : Dimens.twentyTwo,
  );

  static TextStyle normalBlack24 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blackColor,
    fontSize: GetPlatform.isMobile ? Dimens.twenty : Dimens.twentyFour,
  );

  static TextStyle normalBlack26 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blackColor,
    fontSize: Dimens.twentySix,
  );

  static TextStyle normalBlack28 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blackColor,
    fontSize: Dimens.twentyEight,
  );

  static TextStyle normalBlack30 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blackColor,
    fontSize: Dimens.thirty,
  );

  static TextStyle normalBlack12Underline = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.underline,
  );
  static TextStyle normalGrey14Italic = TextStyle(
      fontFamily: 'Merriweather Sans',
      color: ColorsValue.greyColor,
      fontSize: Dimens.fourteen,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic);

  static TextStyle normalBlack10Underline = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontSize: Dimens.ten,
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.underline,
  );

  static TextStyle mediumBlack12 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.normal,
    fontSize: Dimens.twelve,
  );

  static TextStyle mediumBlack14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.normal,
    fontSize: Dimens.fourteen,
  );

  static TextStyle mediumLightBlack14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w500,
    fontSize: Dimens.fourteen,
  );

  static TextStyle mediumBlack16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w500,
    fontSize: Dimens.sixTeen,
  );

  static TextStyle mediumBlack17 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w500,
    fontSize: Dimens.seventeen,
  );

  static TextStyle mediumBlack18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w500,
    fontSize: GetPlatform.isMobile ? Dimens.sixTeen : Dimens.eighteen,
  );

  static TextStyle mediumBlack20 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w500,
    fontSize: GetPlatform.isMobile ? Dimens.eighteen : Dimens.twenty,
  );

  static TextStyle mediumBlack22 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w500,
    fontSize: GetPlatform.isMobile ? Dimens.twenty : Dimens.twentyTwo,
  );

  static TextStyle mediumBlack24 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w500,
    fontSize: GetPlatform.isMobile ? Dimens.twenty : Dimens.twentyFour,
  );

  static TextStyle mediumBlack25 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w500,
    fontSize: Dimens.twentyFive,
  );

  static TextStyle mediumBlack26 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w500,
    fontSize: Dimens.twentySix,
  );

  static TextStyle mediumBlack28 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w500,
    fontSize: Dimens.twentyEight,
  );

  static TextStyle mediumBlack30 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w500,
    fontSize: GetPlatform.isMobile ? Dimens.twentyTwo : Dimens.thirty,
  );

  static TextStyle mediumBlack16Line = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: Colors.black,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.lineThrough,
  );

  static TextStyle mediumBlack18Line = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontSize: Dimens.eighteen,
    decoration: TextDecoration.lineThrough,
  );

  static TextStyle mediumBlack20Line = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontSize: Dimens.twenty,
    decoration: TextDecoration.lineThrough,
  );

  static TextStyle mediumBlack22Line = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontSize: Dimens.twentyTwo,
    decoration: TextDecoration.lineThrough,
  );

  static TextStyle mediumBlack24Line = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontSize: Dimens.twentyFour,
    decoration: TextDecoration.lineThrough,
  );

  static TextStyle normalWhite10 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.backgroundColor,
    fontSize: Dimens.ten,
  );

  static TextStyle normalWhite12 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.backgroundColor,
    fontSize: Dimens.twelve,
  );

  static TextStyle normalWhite14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: Colors.white,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalWhite16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: Colors.white,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalWhite18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: Colors.white,
    fontSize: Dimens.eighteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalWhite20 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: Colors.white,
    fontSize: Dimens.twenty,
    fontWeight: FontWeight.normal,
  );
  static TextStyle normalWhite28 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: Colors.white,
    fontSize: Dimens.twentyEight,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumWhite162 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: Colors.white,
    fontSize: Dimens.thirtyTwo,
  );
  static TextStyle mediumWhite166 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: Colors.white,
    fontSize: GetPlatform.isMobile ? Dimens.twentyTwo : Dimens.thirtySix,
  );

  static TextStyle normalWhite40 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: Colors.white,
    fontSize: Dimens.fourty,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumWhite12 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.backgroundColor,
    fontSize: Dimens.twelve,
  );

  static TextStyle mediumWhite14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.backgroundColor,
    fontSize: GetPlatform.isMobile ? Dimens.twelve : Dimens.fourteen,
  );

  static TextStyle mediumWhite16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.backgroundColor,
    fontSize: Dimens.sixTeen,
  );

  static TextStyle mediumWhite18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.backgroundColor,
    fontSize: Dimens.eighteen,
  );

  static TextStyle mediumWhite20 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.backgroundColor,
    fontSize: Dimens.twenty,
  );

  static TextStyle mediumWhite22 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.backgroundColor,
    fontSize: Dimens.twentyTwo,
  );

  static TextStyle mediumWhite24 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.backgroundColor,
    fontSize: Dimens.twentyFour,
  );

  static TextStyle boldWhite14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.backgroundColor,
    fontSize: Dimens.fourteen,
  );

  static TextStyle mediumOrange12 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.orangeColorLight,
    fontSize: Dimens.twelve,
  );

  static TextStyle mediumOrange14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.orangeColorLight,
    fontSize: Dimens.fourteen,
  );

  static TextStyle mediumOrange16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.orangeColorLight,
    fontSize: Dimens.sixTeen,
  );

  static TextStyle mediumOrange18 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.orangeColorLight,
    fontSize: Dimens.eighteen,
  );

  static TextStyle normalOrange14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.orangeColorLight,
    fontSize: Dimens.fourteen,
  );

  static TextStyle normalOrange16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.orangeColorLight,
    fontSize: Dimens.sixTeen,
  );

  static TextStyle normalRed12 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.redColor,
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalRed3 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.redColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalRed14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.redColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalRed16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: ColorsValue.redColor,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.normal,
  );

  static TextStyle mediumBlue14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.w500,
    color: ColorsValue.blueLightColor,
    fontSize: Dimens.fourteen,
  );

  static TextStyle mediumBlue12 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blueLightColor,
    fontSize: Dimens.twelve,
  );

  static TextStyle mediumBlue16Underlined = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blueLightColor,
    fontSize: Dimens.sixTeen,
    decoration: TextDecoration.underline,
  );

  static TextStyle smallTitleUppercase = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blackColor,
    fontSize: Dimens.fourteen,
  );

  static TextStyle smallTitleUppercase16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.blackColor,
    fontSize: Dimens.sixTeen,
  );

  static TextStyle bodyTextDark14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    fontSize: Dimens.fourteen,
    color: Colors.white,
  );

  static TextStyle mediumRed26 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: Colors.red,
    fontSize: Dimens.twentySix,
  );
  static TextStyle mediumRed14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: Colors.red,
    fontSize: Dimens.fourteen,
  );

  static TextStyle mediumGreen14 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: ColorsValue.greenColor,
    fontSize: Dimens.fourteen,
  );

  static TextStyle mediumRed28 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: Colors.red,
    fontSize: Dimens.twentyEight,
  );

  static TextStyle mediumRed30 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontWeight: FontWeight.normal,
    color: Colors.red[600],
    fontSize: Dimens.thirty,
  );

  static var outlineBorderRadius10 = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        Dimens.ten,
      ),
    ),
    borderSide:
        const BorderSide(color: ColorsValue.textfieldGreyColor, width: 1.0),
  );

  static var errorBorderRadius10 = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        Dimens.ten,
      ),
    ),
    borderSide: const BorderSide(color: ColorsValue.redColor, width: 1.0),
  );
  static var outlineBorderEnableRadius10 = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        Dimens.ten,
      ),
    ),
    borderSide: const BorderSide(color: ColorsValue.primaryColor, width: 1.0),
  );

  static BoxDecoration textFormFieldDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(Dimens.five),
    border: Border.all(
      width: 1,
      color: ColorsValue.lightGreyColor,
    ),
  );

  static var outlineBorderRadius50 = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        Dimens.fifty,
      ),
    ),
    borderSide: BorderSide.none,
  );

  static var outlineBorderRadius5 = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        Dimens.five,
      ),
    ),
    borderSide: const BorderSide(color: ColorsValue.primaryColor, width: 1.0),
  );

  static var outlineBorderEnabledRadius5 = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        Dimens.five,
      ),
    ),
    borderSide:
        const BorderSide(color: ColorsValue.lightGreyMainTitleColor, width: 1),
  );

  static var outlineBlackBorderEnabledRadius5 = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        Dimens.five,
      ),
    ),
    borderSide: const BorderSide(color: ColorsValue.blackColor, width: 0.5),
  );

  static var outlineBorderEnabledRadius5Width1 = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        Dimens.five,
      ),
    ),
    borderSide:
        const BorderSide(color: ColorsValue.lightGreyMainTitleColor, width: 1),
  );

  static BoxDecoration greyBorderRadius1 = BoxDecoration(
    borderRadius: BorderRadius.circular(Dimens.twelve),
    border: Border.all(
      color: ColorsValue.lightGreyMainTitleColor,
      width: Dimens.pointZeroEight,
    ),
  );

  static var noOutlineBorderEnabledRadius5 = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        Dimens.five,
      ),
    ),
    borderSide: BorderSide(color: ColorsValue.backgroundColor, width: 1.0),
  );

  static var outlineBorderRadius15 = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        Dimens.fifteen,
      ),
    ),
    borderSide: BorderSide.none,
  );

  static var roundedRectangle2 = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(Dimens.five),
  );

  static var elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(
        mediumWhite16,
      ),
      padding: MaterialStateProperty.all(
        Dimens.edgeInsets15,
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Dimens.five,
          ),
        ),
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) => ColorsValue.primaryColor,
      ),
    ),
  );

  static var textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(
        normalWhite18,
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Dimens.fifty,
          ),
        ),
      ),
    ),
  );

  static BoxDecoration cardDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: ColorsValue.primaryColor.withOpacity(0.15),
          offset: const Offset(1, 1),
          blurRadius: 16.0)
    ],
    border: Border.all(width: Dimens.one, color: Colors.transparent),
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
  );

  static BoxDecoration cardDecoration5 = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: ColorsValue.primaryColor.withOpacity(0.15),
          offset: const Offset(1, 1),
          blurRadius: 16.0)
    ],
    border: Border.all(width: Dimens.one, color: Colors.transparent),
    color: Colors.white,
    borderRadius: BorderRadius.circular(5),
  );

  static BoxDecoration cardDecorationBorderRadius5 = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: ColorsValue.primaryColor.withOpacity(0.15),
          offset: const Offset(1, 1),
          blurRadius: 16.0)
    ],
    border: Border.all(width: Dimens.one, color: Colors.transparent),
    color: Colors.white,
    borderRadius: BorderRadius.circular(5),
  );

  static BoxDecoration cardDecorationLightGrey = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: ColorsValue.primaryColor.withOpacity(0.15),
          offset: const Offset(1, 1),
          blurRadius: 16.0)
    ],
    border: Border.all(width: Dimens.one, color: Colors.transparent),
    color: ColorsValue.lightGreyColor,
    borderRadius: BorderRadius.circular(10),
  );

  static BoxDecoration dropDownLightGreyBorderDecoration = BoxDecoration(
    border: Border.all(width: 1.1, color: ColorsValue.lightGreyColor),
    borderRadius: BorderRadius.circular(Dimens.fourteen),
  );

  static BoxDecoration circleDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.transparent,
  );

  static BoxDecoration sideTabBarDecoration = BoxDecoration(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(Dimens.thirty),
    ),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
          color: ColorsValue.primaryColor.withOpacity(0.15),
          offset: const Offset(0, 1),
          blurRadius: 8.0)
    ],
  );

  static BoxDecoration cardBlueDecoration = BoxDecoration(
    boxShadow: [
      const BoxShadow(
          color: Colors.black12, offset: Offset(1, 1), blurRadius: 16.0)
    ],
    border: Border.all(width: Dimens.one, color: ColorsValue.blueColor),
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
  );

  static BoxDecoration dropDownDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(Dimens.five),
    color: ColorsValue.backgroundColor,
    border: Border.all(
      width: Dimens.one,
      color: ColorsValue.lightGreyColor,
    ),
  );

  static BoxDecoration scheduleBorderDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(Dimens.five),
    color: ColorsValue.backgroundColor,
    border: Border.all(
      width: Dimens.one,
      color: ColorsValue.lightGreyMainTitleColor.withOpacity(0.7),
    ),
  );

  static BoxDecoration dropDownResultDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(Dimens.five),
    color: ColorsValue.backgroundColor,
    border: Border.all(
      width: 0.5,
      color: ColorsValue.lightGreyColor,
    ),
  );
  static BoxDecoration greyBorderRadius5 = BoxDecoration(
      borderRadius: BorderRadius.circular(Dimens.five),
      border: Border.all(
        color: ColorsValue.lightGreyMainTitleColor,
        width: Dimens.one,
      ));

  static BoxDecoration orangeBorderRadius5 = BoxDecoration(
      borderRadius: BorderRadius.circular(Dimens.five),
      border: Border.all(
        color: ColorsValue.orangeColorLight,
        width: Dimens.one,
      ));

  static BoxDecoration dropDownBlueDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(Dimens.zero),
    color: ColorsValue.blueColor,
    border: Border.all(
      width: 0.5,
      color: ColorsValue.blueColor,
    ),
  );

  static BoxDecoration blackCardDecoration = BoxDecoration(
    boxShadow: [
      const BoxShadow(
          color: Colors.black12, offset: Offset(1, 1), blurRadius: 16.0)
    ],
    color: ColorsValue.blackCardColor,
    borderRadius: BorderRadius.circular(10),
  );

  static BoxDecoration blackCardDecoration5 = BoxDecoration(
    boxShadow: [
      const BoxShadow(
          color: Colors.black12, offset: Offset(1, 1), blurRadius: 16.0)
    ],
    color: ColorsValue.blackCardColor,
    borderRadius: BorderRadius.circular(5),
  );

  static BoxDecoration selectedCalendarCell = BoxDecoration(
    color: ColorsValue.primaryColor,
    // boxShadow: kElevationToShadow[1],
    gradient: const LinearGradient(
      colors: [
        ColorsValue.greenColor,
        ColorsValue.primaryColor,
      ],
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      stops: [
        0.2,
        1,
      ],
    ),
    borderRadius: BorderRadius.circular(Dimens.fourty),
  );
  static BoxDecoration defaultCalendarCell = BoxDecoration(
    color: ColorsValue.backgroundColor,
    // boxShadow: kElevationToShadow[1],
    border: Border.all(
      color: ColorsValue.lightGreyColor,
      width: Dimens.one,
    ),
    borderRadius: BorderRadius.circular(Dimens.fourty),
  );

  static BoxDecoration tagGreyDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(Dimens.five),
    color: ColorsValue.veryLightGreyColor,
    border: Border.all(
      width: 0.5,
      color: ColorsValue.greyColor,
    ),
  );

  static TextStyle whiteLight3 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontSize: Dimens.fourteen,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );

  static TextStyle whiteLight2 = TextStyle(
    fontFamily: 'Merriweather Sans',
    fontSize: Dimens.twelve,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );
  static TextStyle black16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: GetPlatform.isMobile ? Dimens.twentyTwo : Dimens.thirtySix,
  );
  static TextStyle normalTrans16 = TextStyle(
    fontFamily: 'Merriweather Sans',
    color: Colors.transparent,
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.normal,
  );
}
