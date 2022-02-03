import 'products.dart';
import 'cart.dart';
import 'orders.dart';

final routes = {
  'products': (_) => Products(),
  'cart': (_) => Cart(),
  'orders': (Map<String, String> data) => Orders(orderId: data['orderId']),
};
