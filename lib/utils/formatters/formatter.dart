

import 'dart:ffi';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date); // Customize the date format as needed
  }

  static String formatCurrency(Double amount) {
    return NumberFormat.currency(locale: 'naira', symbol: '\#').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    //Remove any non-digit character from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'/D'), '');

  String countryCode = '+${digitsOnly.substring(0, 2)}';
  digitsOnly = digitsOnly.substring(2);

  final formattedNumber = StringBuffer();
  formattedNumber.write('($countryCode)');

  int i = 0;
  while (i < digitsOnly.length) {
    int groupLength = 2;
    if(i == 0 && countryCode == '+1') {
      groupLength = 3;
    }
    int end = i + groupLength;
    formattedNumber.write(digitsOnly.substring(i, end));

    if (end < digitsOnly.length) {
      formattedNumber.write(' ');
    }
    i = end;
  }
  return phoneNumber;
  }
}