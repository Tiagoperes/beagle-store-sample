import 'package:beagle/beagle.dart';
import 'package:money2/money2.dart';

Map<String, Operation> operations = {
  'formatPrice': (List<dynamic> args) {
    final num price = args[0];
    final String currency = args[1];
    return Money.fromNum(price, code: currency).toString();
  },
};
