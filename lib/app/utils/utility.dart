import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/app/app.dart';

abstract class Utility {
  /// Show a loading progress indicator
  /// on top of the screen.
  static void showLoadingDialog() async {
    closeDialog();
    await Get.dialog<void>(
      WillPopScope(
        onWillPop: () async => false,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            // decoration: Styles.cardDecoration,
            padding: Dimens.edgeInsets12,
            child: Wrap(
              children: [
                SizedBox(
                  width: Dimens.twoHundred,
                  height: Dimens.twoHundred,
                  child: Lottie.asset(
                    AssetConstants.loader,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  /// Close any open dialog.
  static void closeDialog() {
    if (Get.isDialogOpen ?? false) Get.back<void>();
  }

  static int returnTimeStameDate(int timestamp) =>
      DateTime.fromMillisecondsSinceEpoch(timestamp * 1000).hour;

  static DateTime returnDateAndTime(int timestamp) =>
      DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

  static String? getYearFormateInMonthDayYear(String value) {
    var res = value.split('T');
    var output = res[0].toString();
    try {
      var inputFormat = DateFormat('yyyy-mm-dd');
      var date1 = inputFormat.parse(output);
      var outputFormat = DateFormat('MMM dd yyyy');
      output = outputFormat.format(date1);
    } catch (_) {}
    return output;
  }
}
