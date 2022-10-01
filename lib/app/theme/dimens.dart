import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Contains the dimensions and padding used
/// all over the application.
/// Will be ignored for test since all are static values and would not change.
// coverage:ignore-file
abstract class Dimens {
  static double threePointFive = 3.5.sp;
  static double sixTeen = 16.sp;
  static double pointZeroFive = 0.05.sp;
  static double pointZeroEight = 0.08.sp;
  static double pointOne = 0.1.sp;
  static double pointOneOne = 0.11.sp;
  static double pointOneFive = 0.15.sp;
  static double pointOneEight = 0.18.sp;
  static double pointTwo = 0.2.sp;
  static double pointTwoFive = 0.25.sp;
  static double pointTwoSix = 0.26.sp;
  static double pointThree = 0.3.sp;
  static double pointFour = 0.4.sp;
  static double pointSix = 0.6.sp;
  static double pointSeven = 0.7.sp;
  static double pointSevenFive = 0.75.sp;
  static double pointEight = 0.8.sp;
  static double pointNine = 0.9.sp;
  static double nineteen = 19.sp;
  static double three = 3.sp;
  static double eight = 8.sp;
  static double nine = 9.sp;
  static double zero = 0.sp;
  static double thirteen = 13.sp;
  static double eighteen = 18.sp;
  static double thirtySix = 36.sp;
  static double thirtyEight = 38.sp;
  static double twentyEight = 28.sp;
  static double eleven = 11.sp;
  static double six = 6.sp;
  static double sixty = 60.sp;
  static double twentyTwo = 22.sp;
  static double fourtyEight = 48.sp;
  static double fifty = 50.sp;
  static double fiftyTwo = 52.sp;
  static double one = 1.sp;
  static double onePointFive = 1.5.sp;
  static double onePointEight = 1.8.sp;
  static double twoPointNine = 2.9.sp;
  static double twentyFour = 24.sp;
  static double twentySeven = 27.sp;
  static double twentyThree = 23.sp;
  static double thirtyNine = 39.sp;
  static double twentyFive = 25.sp;
  static double thirty = 30.sp;
  static double eighty = 80.sp;
  static double eightyFive = 85.sp;
  static double pointFive = 0.5.sp;
  static double pointFiveFive = 0.55.sp;
  static double twentySix = 26.sp;
  static double sixtyFour = 64.sp;
  static double twenty = 20.sp;
  static double ten = 10.sp;
  static double five = 5.sp;
  static double fifteen = 15.sp;
  static double four = 4.sp;
  static double fourPointFive = 4.5.sp;
  static double two = 2.sp;
  static double twoPointTwo = 2.2.sp;
  static double twoPointThree = 2.3.sp;
  static double twoPointFour = 2.4.sp;
  static double twoPointFive = 2.5.sp;
  static double twopointSeven = 2.7.sp;
  static double fourteen = 14.sp;
  static double twelve = 12.sp;
  static double seventeen = 17.sp;
  static double thirtyTwo = 32.sp;
  static double thirtyFive = 35.sp;
  static double thirtySeven = 37.sp;
  static double seventy = 70.sp;
  static double fourty = 40.sp;
  static double fourtyTwo = 42.sp;
  static double fourtyThree = 43.sp;
  static double fourtyFour = 44.sp;
  static double fourtyFive = 45.sp;
  static double fourtySix = 46.sp;
  static double thirtyFour = 34.sp;
  static double seven = 7.sp;
  static double ninetyEight = 98.sp;
  static double ninetyFive = 95.sp;
  static double fiftyFive = 55.sp;
  static double fiftyEight = 58.sp;
  static double fiftyFour = 54.sp;
  static double sixtyThree = 63.sp;
  static double hundred = 100.sp;
  static double oneThirtyFive = 135.sp;
  static double oneHundredFourty = 140.sp;
  static double oneHundredFourtyFive = 145.sp;
  static double oneHundredFifty = 150.sp;
  static double oneHundredEighty = 180.sp;
  static double oneHundredTen = 110.sp;
  static double oneHundredTwenty = 120.sp;
  static double oneHundredThirty = 130.sp;
  static double seventyEight = 78.sp;
  static double seventyFive = 75.sp;
  static double twoHundred = 200.sp;
  static double twoHundredtwenty = 220.sp;
  static double twoHundredthirty = 230.sp;
  static double oneHundredSeventy = 170.sp;
  static double oneHundredSixty = 160.sp;
  static double fourHundred = 400.sp;
  static double fourHundredTen = 410.sp;
  static double fourHundredThirty = 430.sp;
  static double fourHundredFifty = 450.sp;
  static double twoHundredFifty = 250.sp;
  static double twoHundredFourty = 240.sp;
  static double twoHundredThirty = 230.sp;
  static double twoHundredSixty = 260.sp;
  static double twoHundredSeventy = 270.sp;
  static double twoHundredEighty = 280.sp;
  static double fiveHundred = 500.sp;
  static double fiveHundredThirty = 530.sp;
  static double fourHundredSixty = 460.sp;
  static double threeHundred = 300.sp;
  static double threeHundredTwenty = 320.sp;
  static double threeHundredFifty = 350.sp;
  static double threeHundredEighty = 380.sp;
  static double threeHundredSeventy = 370.sp;
  static double threeHundredThirty = 330.sp;
  static double ninety = 90.sp;
  static double oneSeventyFive = 175.sp;
  static double oneSeventy = 170.sp;
  static double threeSeventyFive = 375.sp;
  static double fiveSeventyFive = 575.sp;
  static double fiveHundredNinety = 590.sp;
  static double sixHundred = 600.sp;
  static double sixFifty = 650.sp;
  static double sevenHundred = 700.sp;
  static double eightHundred = 800.sp;
  static double thousandHundred = 1100.sp;
  static double fifteenHundredConstant = 1500;
  static double fiveHundredConstant = 500;
  static double sixHundredConstant = 600;
  static double sevenHundredConstant = 700;
  static double elevenHundredConstant = 1100;
  static double twelveHundredConstant = 1200;

  /// Get the height with the percent value of the screen height.
  static double percentHeight(double percentValue) => percentValue.sh;

  /// Get the width with the percent value of the screen width.
  static double percentWidth(double percentValue) => percentValue.sw;

  static SizedBox getBoxWidth(double value) => SizedBox(
        width: percentWidth(value),
      );
  static SizedBox getBoxHeight(double value) => SizedBox(
        height: percentHeight(value),
      );

  static EdgeInsets edgeInsets_3_2 =
      EdgeInsets.symmetric(horizontal: Dimens.three, vertical: Dimens.two);

  static EdgeInsets edgeInsets0_0_20_0 =
      EdgeInsets.fromLTRB(zero, zero, twenty, zero);

  static EdgeInsets edgeInsets20_20_20_0 =
      EdgeInsets.fromLTRB(twenty, twenty, twenty, zero);

  static EdgeInsets edgeInsets20_20_20_20 =
      EdgeInsets.fromLTRB(twenty, twenty, twenty, twenty);

  static EdgeInsets edgeInsets0_20_20_0 =
      EdgeInsets.fromLTRB(zero, twenty, twenty, zero);

  static EdgeInsets edgeInsets20_10_20_0 =
      EdgeInsets.fromLTRB(twenty, ten, twenty, 0);

  static EdgeInsets edgeInsets3Point5_2 =
      EdgeInsets.symmetric(horizontal: threePointFive, vertical: two);

  static EdgeInsets edgeInsets3_1Point5 = EdgeInsets.symmetric(
      horizontal: Dimens.three, vertical: Dimens.onePointFive);

  static EdgeInsets edgeInsets9_2 =
      EdgeInsets.symmetric(horizontal: Dimens.nine, vertical: Dimens.two);

  static EdgeInsets edgeInsets25_10 =
      EdgeInsets.symmetric(horizontal: Dimens.twentyFive, vertical: Dimens.ten);

  static EdgeInsets edgeInsets8_0_8_5 =
      EdgeInsets.fromLTRB(eight, zero, eight, five);

  static EdgeInsets getEdgeInsets(
    double left,
    double top,
    double right,
    double bottom,
  ) =>
      EdgeInsets.fromLTRB(
        left,
        top,
        right,
        bottom,
      );
  static EdgeInsets edgeInsets24_0_24_10 = EdgeInsets.fromLTRB(
    twentyFour,
    zero,
    twentyFour,
    ten,
  );

  static EdgeInsets edgeInsets6_4_6_6 = EdgeInsets.fromLTRB(
    six,
    four,
    six,
    ten,
  );

  static EdgeInsets edgeInsets0_20_0_80 = EdgeInsets.fromLTRB(
    zero,
    twenty,
    zero,
    eighty,
  );
  static EdgeInsets edgeInsets15_10_15_10 = EdgeInsets.fromLTRB(
    fifteen,
    ten,
    fifteen,
    ten,
  );
  static EdgeInsets edgeInsets20_0_0_0 = EdgeInsets.fromLTRB(
    twenty,
    zero,
    zero,
    zero,
  );

  static EdgeInsets edgeInsets0_0_50_0 = EdgeInsets.fromLTRB(
    zero,
    zero,
    fifty,
    zero,
  );
  static EdgeInsets edgeInsets30_0_0_0 = EdgeInsets.fromLTRB(
    thirty,
    zero,
    zero,
    zero,
  );

  static EdgeInsets edgeInsets2_4_2_4 =
      EdgeInsets.fromLTRB(four, six, four, six);

  static EdgeInsets edgeInsets30_10_0_0 = EdgeInsets.fromLTRB(
    thirty,
    ten,
    zero,
    zero,
  );
  static EdgeInsets edgeInsets0_15_0_15 = EdgeInsets.fromLTRB(
    zero,
    fifteen,
    zero,
    fifteen,
  );
  static EdgeInsets edgeInsets20_14P_0_0 = EdgeInsets.fromLTRB(
    twenty,
    percentHeight(0.14),
    zero,
    zero,
  );
  static EdgeInsets edgeInsets20_10P_20_20 = EdgeInsets.fromLTRB(
    twenty,
    percentHeight(0.10),
    twenty,
    twenty,
  );
  static EdgeInsets edgeInsets20_10_20_10 = EdgeInsets.fromLTRB(
    twenty,
    ten,
    twenty,
    ten,
  );
  static EdgeInsets edgeInsets20_20_20_10 = EdgeInsets.fromLTRB(
    twenty,
    twenty,
    twenty,
    ten,
  );
  static EdgeInsets edgeInsets0_80_0_100 = EdgeInsets.fromLTRB(
    zero,
    eighty,
    zero,
    hundred,
  );

  static EdgeInsets edgeInsets0_5_5_5 = EdgeInsets.fromLTRB(
    zero,
    five,
    five,
    five,
  );

  static EdgeInsets edgeInsets0_6_0_6 = EdgeInsets.fromLTRB(
    zero,
    six,
    zero,
    six,
  );

  static EdgeInsets edgeInsets12_6_0_6 = EdgeInsets.fromLTRB(
    twelve,
    six,
    zero,
    six,
  );

  static EdgeInsets edgeInsets50_10_50_10 = EdgeInsets.fromLTRB(
    fifty,
    ten,
    fifty,
    ten,
  );
  static EdgeInsets edgeInsets25_20_25_20 = EdgeInsets.fromLTRB(
    twentyFive,
    twenty,
    twentyFive,
    twenty,
  );
  static EdgeInsets edgeInsets20_25_20_25 = EdgeInsets.fromLTRB(
    twenty,
    twentyFive,
    twenty,
    twentyFive,
  );
  static EdgeInsets edgeInsets15_0_15_20 = EdgeInsets.fromLTRB(
    fifteen,
    zero,
    fifteen,
    twenty,
  );
  static EdgeInsets edgeInsets15_0_15_0 = EdgeInsets.fromLTRB(
    fifteen,
    zero,
    fifteen,
    zero,
  );
  static EdgeInsets edgeInsets15_0_0_0 = EdgeInsets.fromLTRB(
    fifteen,
    zero,
    zero,
    zero,
  );
  static EdgeInsets edgeInsets0_0_10_0 = EdgeInsets.fromLTRB(
    zero,
    zero,
    ten,
    zero,
  );
  static EdgeInsets edgeInsets0_0_10_10 = EdgeInsets.fromLTRB(
    zero,
    zero,
    ten,
    ten,
  );

  static EdgeInsets edgeInsetsCustom0_0_005_0 = EdgeInsets.fromLTRB(
    zero,
    zero,
    Dimens.percentWidth(0.05),
    zero,
  );

  static EdgeInsets edgeInsetsCustom0_0_005_10 = EdgeInsets.fromLTRB(
    zero,
    zero,
    Dimens.percentWidth(0.05),
    ten,
  );

  static EdgeInsets edgeInsetsCustom0_0_004_10 = EdgeInsets.fromLTRB(
    zero,
    zero,
    Dimens.percentWidth(0.04),
    ten,
  );

  static EdgeInsets edgeInsetsCustom0_0_01_0 = EdgeInsets.fromLTRB(
    zero,
    zero,
    Dimens.percentWidth(0.1),
    zero,
  );

  static EdgeInsets edgeInsets24_0_24_0 = EdgeInsets.fromLTRB(
    twentyFour,
    zero,
    twentyFour,
    zero,
  );
  static EdgeInsets edgeInsets0_10_0_0 = EdgeInsets.fromLTRB(
    zero,
    ten,
    zero,
    zero,
  );
  static EdgeInsets edgeInsets0_20_0_0 = EdgeInsets.fromLTRB(
    zero,
    twenty,
    zero,
    zero,
  );

  static EdgeInsets edgeInsets20_30_20_0 = EdgeInsets.only(
      left: Dimens.twenty, right: Dimens.twenty, top: Dimens.thirty);
  static EdgeInsets edgeInsets0_0_0_15 = EdgeInsets.fromLTRB(
    zero,
    zero,
    zero,
    fifteen,
  );
  static EdgeInsets edgeInsets0_0_0_5 = EdgeInsets.fromLTRB(
    zero,
    zero,
    zero,
    five,
  );
  static EdgeInsets edgeInsets0_0_5_0 = EdgeInsets.fromLTRB(
    zero,
    zero,
    five,
    zero,
  );
  static EdgeInsets edgeInsets0_0_0_10 = EdgeInsets.fromLTRB(
    zero,
    zero,
    zero,
    ten,
  );

  static EdgeInsets edgeInsets10_2_10_2 = EdgeInsets.fromLTRB(
    ten,
    two,
    ten,
    two,
  );

  static EdgeInsets edgeInsets14_4_14_4 = EdgeInsets.fromLTRB(
    fourteen,
    four,
    fourteen,
    four,
  );

  static EdgeInsets edgeInsets20_0_20_0 = EdgeInsets.fromLTRB(
    twenty,
    zero,
    twenty,
    zero,
  );
  static EdgeInsets edgeInsets20_0_5_0 = EdgeInsets.fromLTRB(
    twenty,
    zero,
    five,
    zero,
  );
  static EdgeInsets edgeInsets20_0_20_20 = EdgeInsets.fromLTRB(
    twenty,
    zero,
    twenty,
    twenty,
  );
  static EdgeInsets edgeInsets0_5_0_0 = EdgeInsets.fromLTRB(
    zero,
    five,
    zero,
    zero,
  );

  static EdgeInsets edgeInsets10_5_10_5 = EdgeInsets.fromLTRB(
    ten,
    five,
    ten,
    five,
  );
  static EdgeInsets edgeInsets15_15_15_15 = EdgeInsets.fromLTRB(
    fifteen,
    fifteen,
    fifteen,
    fifteen,
  );
  static EdgeInsets edgeInsets20_120_20_50 = EdgeInsets.fromLTRB(
    twenty,
    oneHundredTwenty,
    twenty,
    fifty,
  );
  static EdgeInsets edgeInsets24_0_40_34 = EdgeInsets.fromLTRB(
    fourty,
    zero,
    fourty,
    thirtyFour,
  );
  static EdgeInsets edgeInsets0_30_0_50 = EdgeInsets.fromLTRB(
    zero,
    thirty,
    zero,
    fifty,
  );
  static EdgeInsets edgeInsets0_15_0_50 = EdgeInsets.fromLTRB(
    zero,
    fifteen,
    zero,
    fifty,
  );
  static EdgeInsets edgeInsets30_0_30_30 = EdgeInsets.fromLTRB(
    thirty,
    zero,
    thirty,
    thirty,
  );

  static EdgeInsets edgeInsets30_20_30_20 = EdgeInsets.fromLTRB(
    thirty,
    twenty,
    thirty,
    twenty,
  );
  static EdgeInsets edgeInsets40_0_40_0 = EdgeInsets.fromLTRB(
    fourty,
    zero,
    fourty,
    zero,
  );
  static EdgeInsets edgeInsets50_0_50_0 = EdgeInsets.fromLTRB(
    fifty,
    zero,
    fifty,
    zero,
  );
  static EdgeInsets edgeInsets0_50_0_0 = EdgeInsets.fromLTRB(
    zero,
    fifty,
    zero,
    zero,
  );

  static EdgeInsets edgeInsets50 = EdgeInsets.fromLTRB(
    fifty,
    fifty,
    fifty,
    fifty,
  );

  static EdgeInsets edgeInsets70 = EdgeInsets.fromLTRB(
    seventy,
    seventy,
    seventy,
    seventy,
  );

  static EdgeInsets edgeInsets0_10_0_10 = EdgeInsets.fromLTRB(
    zero,
    ten,
    zero,
    ten,
  );

  static EdgeInsets edgeInsets16_10_16_10 = EdgeInsets.fromLTRB(
    sixTeen,
    ten,
    zero,
    sixTeen,
  );

  static EdgeInsets edgeInsets0_16_0_16 = EdgeInsets.fromLTRB(
    zero,
    sixTeen,
    zero,
    sixTeen,
  );

  static EdgeInsets edgeInsets0_16_20_16 = EdgeInsets.fromLTRB(
    zero,
    sixTeen,
    twenty,
    sixTeen,
  );

  static EdgeInsets edgeInsets0_20_0_20 = EdgeInsets.fromLTRB(
    zero,
    twenty,
    zero,
    twenty,
  );
  static EdgeInsets edgeInsets100 = EdgeInsets.fromLTRB(
    hundred,
    hundred,
    hundred,
    hundred,
  );

  static EdgeInsets edgeInsets0_54_0_0 = EdgeInsets.fromLTRB(
    zero,
    fiftyFour,
    zero,
    zero,
  );
  static EdgeInsets edgeInsets50_30_50_0 = EdgeInsets.fromLTRB(
    fifty,
    thirty,
    fifty,
    zero,
  );
  static EdgeInsets edgeInsets60_30_60_10 = EdgeInsets.fromLTRB(
    sixty,
    thirty,
    sixty,
    ten,
  );

  static EdgeInsets edgeInsets60_0_60_0 = EdgeInsets.fromLTRB(
    sixty,
    zero,
    sixty,
    zero,
  );
  static EdgeInsets edgeInsets60_0_60_10 = EdgeInsets.fromLTRB(
    sixty,
    zero,
    sixty,
    ten,
  );

  static EdgeInsets edgeInsets10_0_10_5 = EdgeInsets.fromLTRB(
    ten,
    zero,
    ten,
    five,
  );
  static EdgeInsets edgeInsets10_0_10_0 = EdgeInsets.fromLTRB(
    ten,
    zero,
    ten,
    zero,
  );
  static EdgeInsets edgeInsets0_10P_0_10 = EdgeInsets.fromLTRB(
    zero,
    percentHeight(0.10),
    zero,
    five,
  );
  static EdgeInsets edgeInsets0_0_0_20 = EdgeInsets.fromLTRB(
    zero,
    zero,
    zero,
    twenty,
  );
  static EdgeInsets edgeInsets0_0_0_80 = EdgeInsets.fromLTRB(
    zero,
    zero,
    zero,
    eighty,
  );
  static EdgeInsets edgeInsets0_12P_0_80 = EdgeInsets.fromLTRB(
    zero,
    percentHeight(0.12),
    zero,
    eighty,
  );
  static EdgeInsets edgeInsets0_14P_0_80 = EdgeInsets.fromLTRB(
    zero,
    percentHeight(0.14),
    zero,
    eighty,
  );
  static EdgeInsets edgeInsets90_0_1_0 = EdgeInsets.fromLTRB(
    ninety,
    zero,
    one,
    zero,
  );
  static EdgeInsets edgeInsets0_8_0_8 =
      EdgeInsets.fromLTRB(zero, eight, zero, eight);

  static EdgeInsets edgeInsets10_5_10_10 = EdgeInsets.fromLTRB(
    ten,
    five,
    ten,
    ten,
  );
  static EdgeInsets edgeInsets10_0_0_0 = EdgeInsets.fromLTRB(
    ten,
    zero,
    zero,
    zero,
  );

  static EdgeInsets edgeInsets100_0_0_0 = EdgeInsets.fromLTRB(
    hundred,
    zero,
    zero,
    zero,
  );
  static EdgeInsets edgeInsets18_0_18_0 = EdgeInsets.fromLTRB(
    eighteen,
    zero,
    eighteen,
    zero,
  );

  static EdgeInsets edgeInsets0_12_8_8 = EdgeInsets.fromLTRB(
    zero,
    twelve,
    eight,
    eight,
  );

  static EdgeInsets edgeInsets5_0_5_0 = EdgeInsets.fromLTRB(
    five,
    zero,
    five,
    zero,
  );
  static EdgeInsets edgeInsets0_5_0_5 = EdgeInsets.fromLTRB(
    zero,
    five,
    zero,
    five,
  );

  static EdgeInsets edgeInsets18_10_18_10 = EdgeInsets.fromLTRB(
    eighteen,
    ten,
    eighteen,
    ten,
  );

  static EdgeInsets edgeInsets16_6_16_6 = EdgeInsets.fromLTRB(
    sixTeen,
    six,
    sixTeen,
    six,
  );

  static EdgeInsets edgeInsets16_12_16_12 = EdgeInsets.fromLTRB(
    sixTeen,
    twelve,
    sixTeen,
    twelve,
  );

  static EdgeInsets edgeInsets12_16_12_16 = EdgeInsets.fromLTRB(
    twelve,
    sixTeen,
    twelve,
    sixTeen,
  );

  static EdgeInsets edgeInsets8_16_8_16 = EdgeInsets.fromLTRB(
    eight,
    sixTeen,
    eight,
    sixTeen,
  );

  static EdgeInsets edgeInsets12_14_12_14 = EdgeInsets.fromLTRB(
    twelve,
    fourteen,
    twelve,
    fourteen,
  );

  static EdgeInsets edgeInsets12_20_12_20 = EdgeInsets.fromLTRB(
    twelve,
    twenty,
    twelve,
    twenty,
  );

  static EdgeInsets edgeInsets16_6_16_12 = EdgeInsets.fromLTRB(
    sixTeen,
    six,
    sixTeen,
    twelve,
  );

  static EdgeInsets edgeInsets16_6_16_16 = EdgeInsets.fromLTRB(
    sixTeen,
    six,
    sixTeen,
    sixTeen,
  );

  static EdgeInsets edgeInsets16_12_16_4 = EdgeInsets.fromLTRB(
    sixTeen,
    twelve,
    sixTeen,
    four,
  );

  static EdgeInsets edgeInsets16_12_16_0 = EdgeInsets.fromLTRB(
    sixTeen,
    twelve,
    sixTeen,
    zero,
  );

  static EdgeInsets edgeInsets16_0_16_0 = EdgeInsets.fromLTRB(
    sixTeen,
    zero,
    sixTeen,
    zero,
  );
  static EdgeInsets edgeInsets16_16_16_6 = EdgeInsets.fromLTRB(
    sixTeen,
    sixTeen,
    sixTeen,
    six,
  );

  static EdgeInsets edgeInsets16_16_200_16 = EdgeInsets.fromLTRB(
    sixTeen,
    sixTeen,
    twoHundred,
    sixTeen,
  );

  static EdgeInsets edgeInsets16_10_16_0 = EdgeInsets.fromLTRB(
    sixTeen,
    ten,
    sixTeen,
    zero,
  );
  static EdgeInsets edgeInsets12_2_12_2 = EdgeInsets.fromLTRB(
    twelve,
    two,
    twelve,
    two,
  );
  static EdgeInsets edgeInsets12_6_12_6 = EdgeInsets.fromLTRB(
    twelve,
    six,
    twelve,
    six,
  );

  static EdgeInsets edgeInsets12_0_12_0 = EdgeInsets.fromLTRB(
    twelve,
    zero,
    twelve,
    zero,
  );

  // static EdgeInsets edgeInsets12_16_12_16 = EdgeInsets.fromLTRB(
  //   twelve,
  //   sixTeen,
  //   twelve,
  //   sixTeen,
  // );

  static EdgeInsets edgeInsets12_0_12_4 = EdgeInsets.fromLTRB(
    twelve,
    zero,
    twelve,
    four,
  );

  static EdgeInsets edgeInsets0_4_0_12 = EdgeInsets.fromLTRB(
    zero,
    four,
    zero,
    twelve,
  );
  static EdgeInsets edgeInsets4_0_4_0 = EdgeInsets.fromLTRB(
    four,
    zero,
    four,
    zero,
  );
  static EdgeInsets edgeInsets4_0_4_12 = EdgeInsets.fromLTRB(
    four,
    zero,
    four,
    twelve,
  );
  static EdgeInsets edgeInsets12_4_12_4 = EdgeInsets.fromLTRB(
    twelve,
    four,
    twelve,
    four,
  );

  static EdgeInsets edgeInsets12_8_12_8 = EdgeInsets.fromLTRB(
    twelve,
    eight,
    twelve,
    eight,
  );
  static EdgeInsets edgeInsets12_10_12_10 = EdgeInsets.fromLTRB(
    twelve,
    ten,
    twelve,
    ten,
  );

  static EdgeInsets edgeInsets12_0_12_10 = EdgeInsets.fromLTRB(
    twelve,
    zero,
    twelve,
    ten,
  );

  static EdgeInsets edgeInsets6_0_6_0 = EdgeInsets.fromLTRB(
    six,
    zero,
    six,
    zero,
  );
  static EdgeInsets edgeInsets6_12_6_12 = EdgeInsets.fromLTRB(
    six,
    twelve,
    six,
    twelve,
  );

  static EdgeInsets edgeInsets100_0_100_0 = EdgeInsets.fromLTRB(
    hundred,
    zero,
    hundred,
    zero,
  );

  static EdgeInsets edgeInsets8_12_8_12 = EdgeInsets.fromLTRB(
    eight,
    twelve,
    eight,
    twelve,
  );
  static EdgeInsets edgeInsets12_4_12_12 = EdgeInsets.fromLTRB(
    twelve,
    four,
    twelve,
    twelve,
  );

  static EdgeInsets edgeInsets16_16_16_0 = EdgeInsets.fromLTRB(
    sixTeen,
    sixTeen,
    sixTeen,
    zero,
  );

  static EdgeInsets edgeInsets8_0_8_0 = EdgeInsets.fromLTRB(
    eight,
    zero,
    eight,
    zero,
  );

  static EdgeInsets edgeInsets8_6_8_6 = EdgeInsets.fromLTRB(
    eight,
    six,
    eight,
    six,
  );

  static EdgeInsets edgeInsets8_4_8_4 = EdgeInsets.fromLTRB(
    eight,
    four,
    eight,
    four,
  );

  static EdgeInsets edgeInsets8_4_8_2 = EdgeInsets.fromLTRB(
    eight,
    four,
    eight,
    two,
  );

  static EdgeInsets edgeInsets15_3_15_0 = EdgeInsets.fromLTRB(
    fifteen,
    three,
    fifteen,
    zero,
  );

  static EdgeInsets edgeInsets16_16_6_16 = EdgeInsets.fromLTRB(
    sixTeen,
    sixTeen,
    six,
    sixTeen,
  );

  static EdgeInsets edgeInsets16_20_16_20 = EdgeInsets.fromLTRB(
    sixTeen,
    twenty,
    sixTeen,
    twenty,
  );

  static EdgeInsets edgeInsets12_12_0_12 = EdgeInsets.fromLTRB(
    twelve,
    twelve,
    zero,
    twelve,
  );

  // static EdgeInsets edgeInsets10_4_10_4 =
  //     EdgeInsets.fromLTRB(ten, four, ten, four);

  static EdgeInsets edgeInsets0 = EdgeInsets.all(
    zero,
  );

  static EdgeInsets edgeInsets30_30_30_0 = EdgeInsets.only(
    left: Dimens.thirty,
    right: Dimens.thirty,
    top: Dimens.thirty,
  );

  static EdgeInsets edgeInsets30_10_30_0 = EdgeInsets.only(
    left: Dimens.thirty,
    right: Dimens.ten,
    top: Dimens.thirty,
  );

  static EdgeInsets edgeInsets15 = EdgeInsets.all(
    fifteen,
  );
  static EdgeInsets edgeInsets2 = EdgeInsets.all(
    two,
  );
  static EdgeInsets edgeInsets3 = EdgeInsets.all(
    three,
  );
  static EdgeInsets edgeInsets4 = EdgeInsets.all(
    four,
  );
  static EdgeInsets edgeInsets5 = EdgeInsets.all(
    five,
  );
  static EdgeInsets edgeInsetsSymmentic30_0 =
      EdgeInsets.symmetric(horizontal: thirty);

  static EdgeInsets edgeInsetsSymmentic20_0 =
  EdgeInsets.symmetric(horizontal: twenty);

  static EdgeInsets edgeInsets8 = EdgeInsets.all(
    eight,
  );

  static EdgeInsets edgeInsetsTopTwelvePercent = EdgeInsets.only(
    top: percentHeight(0.12),
  );
  static EdgeInsets edgeInsets6 = EdgeInsets.all(
    six,
  );

  static EdgeInsets edgeInsets10 = EdgeInsets.all(
    ten,
  );
  static EdgeInsets edgeInsets12 = EdgeInsets.all(
    twelve,
  );
  static EdgeInsets edgeInsets40 = EdgeInsets.all(
    fourty,
  );
  static EdgeInsets edgeInsets14 = EdgeInsets.all(
    fourteen,
  );
  static EdgeInsets edgeInsets16 = EdgeInsets.all(
    sixTeen,
  );
  static EdgeInsets edgeInsets18 = EdgeInsets.all(
    eighteen,
  );
  static EdgeInsets edgeInsets20 = EdgeInsets.all(
    twenty,
  );
  static EdgeInsets edgeInsets23 = EdgeInsets.all(
    twentyThree,
  );
  static EdgeInsets edgeInsets24 = EdgeInsets.all(
    twentyFour,
  );
  static EdgeInsets edgeInsets30 = EdgeInsets.all(
    thirty,
  );
  static SizedBox boxHeight8 = SizedBox(
    height: eight,
  );
  static SizedBox boxHeight10 = SizedBox(
    height: ten,
  );
  static SizedBox boxHeight0 = SizedBox(
    height: zero,
  );
  static SizedBox boxHeight2 = SizedBox(
    height: two,
  );
  static SizedBox boxHeight5 = SizedBox(
    height: five,
  );
  static SizedBox boxHeight1 = SizedBox(
    height: one,
  );
  static SizedBox boxHeight3 = SizedBox(
    height: three,
  );
  static SizedBox boxHeight4 = SizedBox(
    height: four,
  );
  static SizedBox boxHeight6 = SizedBox(
    height: Dimens.six,
  );
  static SizedBox boxHeight32 = SizedBox(
    height: thirtyTwo,
  );
  static SizedBox boxHeight35 = SizedBox(
    height: thirtyFive,
  );
  static SizedBox boxHeight16 = SizedBox(
    height: sixTeen,
  );
  static SizedBox boxHeight30 = SizedBox(
    height: thirty,
  );
  static SizedBox boxHeight40 = SizedBox(
    height: fourty,
  );
  static SizedBox boxWidth12 = SizedBox(
    width: twelve,
  );
  static SizedBox boxWidth2 = SizedBox(
    width: two,
  );

  static SizedBox boxWidth = SizedBox(
    width: zero,
  );
  static SizedBox boxWidth1 = SizedBox(
    width: one,
  );
  static SizedBox boxWidth3 = SizedBox(
    width: three,
  );
  static SizedBox boxWidth5 = SizedBox(
    width: five,
  );
  static SizedBox boxWidth8 = SizedBox(
    width: eight,
  );
  static SizedBox boxWidth10 = SizedBox(
    width: ten,
  );
  static SizedBox boxWidth20 = SizedBox(
    width: twenty,
  );
  static SizedBox boxWidth25 = SizedBox(
    width: twentyFive,
  );
  static SizedBox boxWidth35 = SizedBox(
    width: thirtyFive,
  );

  static SizedBox boxWidth40 = SizedBox(
    width: fourty,
  );

  static SizedBox boxWidth50 = SizedBox(
    width: fifty,
  );
  static SizedBox boxWidth60 = SizedBox(
    width: sixty,
  );
  static SizedBox boxWidth80 = SizedBox(
    width: eighty,
  );

  static SizedBox boxWidth30 = SizedBox(
    width: thirty,
  );

  static SizedBox boxHeight20 = SizedBox(
    height: twenty,
  );
  static SizedBox boxHeight200 = SizedBox(
    height: twoHundred,
  );
  static SizedBox boxHeight150 = SizedBox(
    height: oneHundredFifty,
  );

  static SizedBox boxHeight25 = SizedBox(
    height: twentyFive,
  );

  static SizedBox boxHeight28 = SizedBox(
    height: twentyEight,
  );
  static SizedBox boxHeight15 = SizedBox(
    height: fifteen,
  );
  static SizedBox boxWidth15 = SizedBox(
    width: fifteen,
  );
  static SizedBox boxHeight26 = SizedBox(
    height: twentySix,
  );
  static SizedBox boxHeight50 = SizedBox(
    height: fifty,
  );
  static SizedBox boxHeight60 = SizedBox(
    height: sixty,
  );
  static SizedBox boxHeight70 = SizedBox(
    height: seventy,
  );
  static SizedBox boxHeight80 = SizedBox(
    height: eighty,
  );
  static SizedBox boxHeight100 = SizedBox(
    height: hundred,
  );
  static SizedBox boxHeight120 = SizedBox(
    height: oneHundredTwenty,
  );
  static SizedBox box0 = const SizedBox.shrink();

  static EdgeInsets edgeInsets8_20 = EdgeInsets.symmetric(
    vertical: Dimens.eight,
    horizontal: Dimens.twenty,
  );
  static EdgeInsets edgeInsetsTop15 = EdgeInsets.only(top: Dimens.fifteen);

  static EdgeInsets edgeInsetsTop20 = EdgeInsets.only(top: Dimens.twenty);

  static EdgeInsets edgeInsetsTop25 = EdgeInsets.only(top: Dimens.fifteen);

  static EdgeInsets edgeInsetsTop38 = EdgeInsets.only(top: Dimens.thirtyEight);

  static EdgeInsets edgeInset80_20 =
      EdgeInsets.symmetric(horizontal: Dimens.eighty, vertical: Dimens.twenty);
  static EdgeInsets edgeInsets5_22 = EdgeInsets.symmetric(
    vertical: Dimens.five,
    horizontal: Dimens.twentyTwo,
  );
  static EdgeInsets edgeInset40_10 =
      EdgeInsets.symmetric(horizontal: Dimens.fourty, vertical: Dimens.ten);

  static EdgeInsets edgeInset30_10 =
      EdgeInsets.symmetric(horizontal: Dimens.fifty, vertical: Dimens.ten);

  static EdgeInsets edgeInset15_10 =
      EdgeInsets.symmetric(vertical: Dimens.fifteen, horizontal: Dimens.ten);

  static EdgeInsets edgeInset25_10 =
  EdgeInsets.symmetric(vertical: Dimens.ten, horizontal: Dimens.twentyFive);

  static EdgeInsets edgeInset10_10 =
      EdgeInsets.symmetric(vertical: Dimens.ten, horizontal: Dimens.ten);

  static EdgeInsets edgeInsetsLeftRight_10_10 =
      EdgeInsets.only(left: Dimens.ten, right: Dimens.ten);

  static EdgeInsets edgeInsetsLeft20 = EdgeInsets.only(left: Dimens.twenty);

  static EdgeInsets edgeInsets15_10_0_10 = EdgeInsets.fromLTRB(
    fifteen,
    ten,
    zero,
    ten,
  );

  static double splashRadiusFive = 5;

  static double sizeBoxWidthOneHunderFifty = 150;

  static double nineHundredSeventy = 970;

  static double crossAxisSpacingThirty = 30;

  static double fourHunderFifty = 450.sp;
}
