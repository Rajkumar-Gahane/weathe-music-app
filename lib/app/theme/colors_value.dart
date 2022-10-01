import 'package:flutter/material.dart';

/// A chunks of colors used
/// in the application
/// Will be ignored for test since all are static values and would not change.
// coverage:ignore-file
abstract class ColorsValue {
  static const Map<int, Color> primaryColorSwatch = {
    50: Color.fromRGBO(28, 0, 92, .1),
    100: Color.fromRGBO(28, 0, 92, .2),
    200: Color.fromRGBO(28, 0, 92, .3),
    300: Color.fromRGBO(28, 0, 92, .4),
    400: Color.fromRGBO(28, 0, 92, .5),
    500: Color.fromRGBO(28, 0, 92, .6),
    600: Color.fromRGBO(28, 0, 92, .7),
    700: Color.fromRGBO(28, 0, 92, .8),
    800: Color.fromRGBO(28, 0, 92, .9),
    900: Color.fromRGBO(28, 0, 92, 1.0),
  };

  static const Color primaryColor = Color(
    primaryColorHex,
  );

  static const Color dividerColor = Color(0xffE9ECF1);

  static const Color greyColor = Color(
    greyColorHex,
  );

  static const Color darkGreyColor = Color(
    darkGreyHex,
  );

  static const Color textfieldGreyColor = Color(
    textfieldGrey,
  );

  static const Color lightGreyColor = Color(
    lightGreyColorHex,
  );

  static const lightGreyMainTitleColor = Color(
    lightGreyMainTitleColorHex,
  );

  static const Color lightGreyColor1 = Color(
    lightGreyColor1Hex,
  );

  static const Color lightGreyColor2 = Color(
    lightGreyColor2Hex,
  );

  static const Color lightGreyColor3 = Color(
    lightGreyColor3Hex,
  );

  static const Color lightGreyColor4 = Color(
    lightGreyColor4Hex,
  );

  static const Color lightGreyColor5 = Color(
    lightGreyColor5Hex,
  );

  static const Color titleGreyColor = Color(
    titleGreyColorHex,
  );

  static const Color blackColor = Color(
    blackColorHex,
  );

  static const Color selectedColor = Color(
    selectedPageColor,
  );

  static const Color nonSelectedColor = Color(
    nonSelectedPageColor,
  );

  static const Color textFieldColor = Color(
    formFieldColor,
  );

  static const Color hintColor = Color(
    fieldHintColor,
  );

  static const Color accountColor = Color(
    createAccountColor,
  );

  static const Color otpColor = Color(
    otpFieldColor,
  );

  static const Color outlineBorder = Color(
    outLineColorOfProductUsed,
  );

  static const Color gradient1Color = Color(
    gradient1Hex,
  );

  static const Color gradient2Color = Color(
    primaryColorHex,
  );

  static const Color profileColor = Color(
    profileHex,
  );

  static const Color successColor = Color(
    successHex,
  );

  static const Color helpColor = Color(
    helpColorHex,
  );

  static const Color progressColor = Color(
    progressColorHex,
  );

  static const Color homeTabBarColor = Color(
    homeTabBarHex,
  );

  static const Color homeTabBarProgressColor = Color(
    homeTabBarProgressHex,
  );
  static const Color whiteTableHeadingColor = Color(
    whiteTableHeadingHex,
  );
  static const Color appSecondaryButtonColor = Color(
    appSecondaryButtonHex,
  );

  static const Color textFieldErrorColor = Color(fieldErrorColor);
  static const Color boderGreyColor = Color(boderGrey);
  // static const Color btnBackgroundColor=Color(btnBackgroundColorHex);
  static const Color btnBackgroundColor = Color(0xFFFFFFFF);

  // static const int whiteColorHex=

  static const Color orangeColorLight = Color(0xFFec8235);
  static const int btnBackgroundColorHex = 0xFFFFFF;

  static Color backgroundColor = Colors.white;

  static const int primaryColorHex = 0xFF04095A;

  static const int white70 = 0x70C73D5D;

  static const int boderGrey = 0xCECECECE;

  static const int orangeColorHex = 0xFFE74E35;

  static const int facebookColorHex = 0xFF4084EF;

  static const int greyColorHex = 0xFF7E7E7E;

  static const int darkGreyHex = 0xff333333;

  static const int textfieldGrey = 0xffCECECE;

  static const int lightGreyColor1Hex = 0xFFE2E2E2;

  static const int lightGreyColorHex = 0xff90A1B7;

  static const int lightGreyMainTitleColorHex = 0xffA7B3C4;

  static const int titleGreyColorHex = 0xFFB2AEAE;

  static const int lightGreyColor2Hex = 0xFF43586B;

  static const int lightGreyColor3Hex = 0xFFCCCBCB;

  static const int lightGreyColor4Hex = 0xFFDCDEEA;

  static const int lightGreyColor5Hex = 0xFFD3D3D3;

  static const int blackColorHex = 0xff000000;

  static const int selectedPageColor = 0xffEE5561;

  static const int nonSelectedPageColor = 0xFFEEEEED;

  static const int formFieldColor = 0xFFFFFFFF;

  static const int fieldHintColor = 0xFF43586B;

  static const int createAccountColor = 0xFF0075FE;

  static const int otpFieldColor = 0xFFF5F5F5;

  static const int outLineColorOfProductUsed = 0xff007428;

  static const int gradient1Hex = 0xff9E55FF;

  static const int gradient2Hex = 0xff9E55FF;

  static const int profileHex = 0xff9BA1CC;

  static const int successHex = 0xff00656D;

  static const int helpColorHex = 0xff1A3A67;

  static const int progressColorHex = 0xff0381FF;

  static const int homeTabBarHex = 0xffF7F7FA;

  static const int homeTabBarProgressHex = 0xff0021FF;

  static const int fieldErrorColor = 0xffe63f36;

  static const int greenColorHex = 0xff2ecbaa;

  static const Color transparent = Color.fromARGB(0, 255, 255, 255);

  static const int greenLight = 0xFF2ec9aa;
  static const Color greenLightColor = Color(greenLight);

  static const int blueLight = 0xFF358FCF;
  static const Color blueLightColor = Color(blueLight);

  static const int blueSuperLight = 0xFFEAF1FF;
  static const Color blueSuperLightColor = Color(blueSuperLight);

  static const int blue = 0xFF3490CF;
  static const Color blueColor = Color(0xff377BFF);

  static const int greenSuperLight = 0xFFE5FDEB;
  static const Color greenSuperLightColor = Color(blueSuperLight);

  static const int green = 0xFF3490CF;
  static const Color greenColor = Color(0xff005D17);

  static const int brownSuperLight = 0xFFFDE5E5;
  static const Color brownSuperLightColor = Color(blueSuperLight);

  static const int brown = 0xFF3490CF;
  static const Color brownColor = Color(0xff5E0000);

  static const int voiletSuperLight = 0xFF04095A1A;
  static const Color voiletSuperLightColor = Color(blueSuperLight);

  static const int voilet = 0xFF3490CF;
  static const Color voiletColor = Color(0xff04095A);

  static const int greenSwitchEnableColorCode = 0xFF20c57d;
  static const Color switchEnableColor = Color(greenSwitchEnableColorCode);

  static const int redColorCode = 0xFFff4b4b;
  static const Color redColor = Color(redColorCode);

  static const int approvedColorCode = 0xFF00d339;
  static const Color approvedColor = Color(approvedColorCode);

  static const int rejectedColorCode = 0xFFff0037;
  static const Color rejectedColor = Color(rejectedColorCode);
  static const int containerBGColorHex = 0xFFF4F4F4;
  static const Color containerBGColor = Color(containerBGColorHex);

  static const Color blackCardColor = Color(0xFF1C2D41);

  static const Color smsBubbleBGColor = Color(0xFFF6F7F9);

  static const veryLightGreyColor = Color(0xffececec);

  static const cyanColor = Color(0xff00E9D1);

  static const lightCyanColor = Color(0xffE5FDFB);

  static const int whiteTableHeadingHex = 0xffFCFCFD;
  static const int appSecondaryButtonHex = 0xff00DAFF;

  static const int lightBlueHex = 0xffF0F8FF;

  static const Color lightBlueColor = Color(
    lightBlueHex,
  );
}
