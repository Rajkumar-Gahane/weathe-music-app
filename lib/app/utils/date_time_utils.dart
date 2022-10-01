import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// coverage:ignore-file
class DateTimeUtils {
  static String formattedDateTime(String serverDate) {
    var dateFormatForChange = '';

    /// if serverDate contains '-' then we manipulate the date string otherwise we just change into simple date format
    if (serverDate.contains('-')) {
      final now = DateTime.now().toLocal();
      final today = DateTime(now.year, now.month, now.day);

      var currentFormattedDate = '';
      try {
        currentFormattedDate = DateFormat('yyyy-MM-dd').format(today);
      } catch (_) {}

      var serverDateArray = serverDate.split('-');
      var customTimeFromServer = '';

      /// if serverDate contains 2 '-' then go to if condition else go to else if condition
      if (serverDateArray.length == 3) {
        /// When receive date like '20210721-102813-003'
        dateFormatForChange = 'HH:mm:ss, yyyy-MM-dd';
        customTimeFromServer = serverDateArray[1].length == 6
            ? '${serverDateArray[1].substring(0, 2)}:${serverDateArray[1].substring(2, 4)}:${serverDateArray[1].substring(4, 6)}'
            : '${serverDateArray[1].substring(0, 2)}:${serverDateArray[1].substring(2, 4)}:00';
        serverDate =
            '${serverDateArray[0]} $customTimeFromServer.${serverDateArray[2]}';
      } else if (serverDateArray.length == 2) {
        if (serverDateArray[0].isNotEmpty && serverDateArray[1].isNotEmpty) {
          /// when receive like '20210721-102813'. this is a date and time
          dateFormatForChange = 'HH:mm:ss, yyyy-MM-dd';
          customTimeFromServer = serverDateArray[1].length == 6
              ? '${serverDateArray[1].substring(0, 2)}:${serverDateArray[1].substring(2, 4)}:${serverDateArray[1].substring(4, 6)}'
              : '${serverDateArray[1].substring(0, 2)}:${serverDateArray[1].substring(2, 4)}:00';
          serverDate = '${serverDateArray[0]} $customTimeFromServer.000';
        } else if (serverDateArray[0].isEmpty &&
            serverDateArray[1].isNotEmpty) {
          /// when receive like '-142813'. this is a time
          dateFormatForChange = 'HH:mm:ss';
          customTimeFromServer = serverDateArray[1].length == 6
              ? '${serverDateArray[1].substring(0, 2)}:${serverDateArray[1].substring(2, 4)}:${serverDateArray[1].substring(4, 6)}'
              : '${serverDateArray[1].substring(0, 2)}:${serverDateArray[1].substring(2, 4)}:00';
          serverDate = '$currentFormattedDate $customTimeFromServer.000';
        } else if (serverDateArray[0].isNotEmpty &&
            serverDateArray[1].isEmpty) {
          /// when receive like '20210721-'. this is a date
          dateFormatForChange = 'dd-MM-yyyy';
          serverDate = serverDate.replaceAll('-', '');
        }
        //  print('Condition 2  ${serverDateArray[0]}   serverDate $serverDate');
      }
    } else {
      dateFormatForChange = 'dd-MM-yyyy';
    }

    var dateFormatted = '';
    try {
      dateFormatted =
          DateFormat(dateFormatForChange).format(DateTime.parse(serverDate));
    } catch (e) {
      //dateFormatted = '$e';
    }

    // print('dateFormat2  serverDate>>$serverDate   changeIntoDateTime ${DateTime.parse(serverDate)}');

    return dateFormatted;
  }

  static String utcToLocal(String? dateString) {
    var output = '';
    try {
      var date = DateTime.parse(dateString!);
      var format = DateFormat('dd MMM yyyy');
      output = format.format(date);
    } catch (_) {}
    return output;
  }

  static String birthdayFormat(String? dateString) {
    var output = '';
    try {
      var date = DateTime.parse(dateString!);
      var format = DateFormat('dd/MM/yyyy');
      output = format.format(date);
    } catch (_) {}
    return output;
  }

  static DateTime? getServerDate(String? dateString) {
    DateTime? output;
    try {
      if (dateString!.isNotEmpty) {
        var inputFormat = DateFormat('MM/dd/yyyy');
        var date1 = inputFormat.parse(dateString);
        var outputFormat = DateFormat('yyyy-MM-dd');
        output = DateTime.parse(outputFormat.format(date1));
      }
    } catch (_) {}
    return output;
  }

  static String? getServerDateTime(String? dateString) {
    DateTime? output;
    try {
      if (dateString!.isNotEmpty) {
        var inputFormat = DateFormat('MM/dd/yyyy hh:mm a');
        var date1 = inputFormat.parse(dateString);
        var outputFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.s'Z'");
        output = DateTime.parse(outputFormat.format(date1));
        var str = output.toString().split(' ');
        var cloneStr = '${str[0]}T${str[1]}';
        return cloneStr;
      }
    } catch (_) {}
    return '';
  }

  static String? getServerDateTimeFormate(String? dateString) {
    DateTime? output;
    try {
      if (dateString!.isNotEmpty) {
        var inputFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.s'Z'");
        var date1 = inputFormat.parse(dateString);
        var outputFormat = DateFormat('MM/dd/yyyy');
        output = DateTime.parse(outputFormat.format(date1));
        var str = output.toString().split(' ');
        var cloneStr = '${str[0]}T${str[1]}';
        return cloneStr;
      }
    } catch (_) {}
    return '';
  }


  static String? getServerDateStr(String? dateString) {
    var output = dateString;
    try {
      var inputFormat = DateFormat('yyyy-MM-dd');
      var date1 = inputFormat.parse(dateString!);
      var outputFormat = DateFormat('MMM dd yyyy');
      output = outputFormat.format(date1);
    } catch (_) {}
    return output;
  }

  static String? getFormattedDateStrFromServerDate(String? dateString) {
    var output = dateString;
    try {
      var inputFormat = DateFormat('yyyy-MM-dd');
      var date1 = inputFormat.parse(dateString!);
      var outputFormat = DateFormat('MM/dd/yyyy');
      output = outputFormat.format(date1);
    } catch (_) {}
    return output;
  }

  static String? getFormattedDataStrFromSeverReturnMothYearForm(
      String? dateString) {
    var output = dateString;
    try {
      var inputFormat = DateFormat('MM/dd/yyyy');
      var date1 = inputFormat.parse(dateString!);
      var outputFormat = DateFormat('MMM dd yyyy');
      output = outputFormat.format(date1);
    } catch (_) {}
    return output;
  }

  static String? updateDateFormatter(
      String? dateString) {
    var output = dateString;
    try {
      var inputFormat = DateFormat('MM/dd/yyyy');
      var date1 = inputFormat.parse(dateString!);
      var outputFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.s'Z'");
      output = outputFormat.format(date1);

    } catch (_) {}
    return output;
  }

  static String? getYearFormateInMonthDayYear(String value) {
    var res = value.split('T');
    var output = res[0].toString();
    try {
      var inputFormat = DateFormat('yyyy-MMM-dd');
      var date1 = inputFormat.parse(output);
      var outputFormat = DateFormat('MMM dd yyyy');
      output = outputFormat.format(date1);
    } catch (_) {}
    return output;
  }

  /// return the month name and year from datetime
  static String? getYearStrFromDate(DateTime date) {
    var output = '';
    try {
      var outputFormat = DateFormat('yyyy');
      output = outputFormat.format(date);
    } catch (_) {}
    return output;
  }

  /// return the value of showtime picker.......
  static TimeOfDay parseTimeOfDay(String t) {
    var dateTime = DateFormat('hh:mm').parse(t);
    return TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);
  }

  /// return date time format..
  static String getMMDDYYFormatDate(String dateTime) =>
      DateFormat('MM/dd/yyyy').format(DateFormat('yyyy-MM-dd').parse(dateTime));

  /// get time stamp
  static int? getTimeStamp(String date) {
    var res = 0;
    try {
      res = (DateTime
          .parse(date).toUtc()
          .millisecondsSinceEpoch / 1000).round();
    } catch (_) {}
    return res;
  }
}
