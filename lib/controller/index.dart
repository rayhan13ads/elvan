import 'package:elvan/controller/cart/cart_controller.dart';
import 'package:elvan/controller/home/home_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeController = ChangeNotifierProvider(((ref) => HomeController()));
final cartController = ChangeNotifierProvider(((ref) => CartController()));
