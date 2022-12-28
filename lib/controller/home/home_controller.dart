import 'package:elvan/screens/favourite/favourite_page.dart';
import 'package:elvan/screens/home/home_content.dart';
import 'package:elvan/screens/profile/profile_page.dart';
import 'package:elvan/screens/shop/shop_page.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int selectedScreenIndex = 0;
  List<Widget> screens = const [
    HomeContent(),
    FavouritePage(),
    ShopPage(),
    ProfilePage()
  ];
  selectScreen(int index) {
    selectedScreenIndex = index;
    notifyListeners();
  }
}
