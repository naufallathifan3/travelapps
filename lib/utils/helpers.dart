// lib/utils/helpers.dart

import 'package:intl/intl.dart';

String formatPrice(double price) {
  return NumberFormat.currency(locale: 'id_ID', symbol: 'Rp').format(price);
}
