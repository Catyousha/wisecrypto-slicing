import 'package:intl/intl.dart';

class AppUtils {
  static final formatCurrencyEN = NumberFormat.simpleCurrency(decimalDigits: 0);
  static final formatCurrencyID = NumberFormat.simpleCurrency(
    locale: 'id',
    decimalDigits: 0,
  );
}
