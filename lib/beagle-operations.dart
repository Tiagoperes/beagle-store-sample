import 'package:beagle/beagle.dart';
import 'package:money2/money2.dart';

Map<String, Operation> operations = {
  'formatPrice': (List<dynamic> args) {
    final num price = args[0] ?? 0;
    final String currency = args[1] ?? 'USD';
    return Money.fromNum(price, code: currency).toString();
  },
  'sumProducts': (List<dynamic> args) {
    final List<dynamic> products = args[0];
    double value = 0;
    products.forEach((element) => value += element['price']);
    return value;
  },
};
