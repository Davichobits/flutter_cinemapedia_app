import 'package:intl/intl.dart';

class HumanFormats {
  static String formatNumber(double number, [int decimals = 0]) {
    final formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: decimals,
      symbol: '',
      locale: 'en',
    ).format(number);

    return formattedNumber;
  }
}
