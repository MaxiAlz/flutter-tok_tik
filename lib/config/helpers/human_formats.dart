import 'package:intl/intl.dart';

class HumanFormats {
  static String humanReadlableNumber(double number) {
    final formateNumber =
        NumberFormat.compactCurrency(decimalDigits: 0, symbol: '')
            .format(number);

    return formateNumber;
  }
}
