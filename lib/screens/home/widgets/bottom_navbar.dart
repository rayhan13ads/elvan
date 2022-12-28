import 'package:elvan/constants/assets_path.dart';
import 'package:elvan/controller/index.dart';
import 'package:elvan/screens/home/widgets/navbar_icon_svg.dart';
import 'package:elvan/screens/home/widgets/navbar_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class BottomNavbar extends ConsumerWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(homeController);
    return Container(
      height: 64,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavBarIcon(
                icon: Icons.home,
                inactiveIcon: Icons.home,
                darkMode: false,
                active: (state.selectedScreenIndex == 0),
                onClick: () => state.selectScreen(0),
              ),
              NavBarIcon(
                icon: FontAwesome.heart,
                inactiveIcon: FontAwesome.heart,
                darkMode: false,
                active: (state.selectedScreenIndex == 1),
                onClick: () => state.selectScreen(1),
              ),
              NavBarIconWidget(
                icon: SHOP_SVG,
                inactiveIcon: SHOP_SVG,
                darkMode: false,
                active: (state.selectedScreenIndex == 2),
                onClick: () => state.selectScreen(2),
              ),
              NavBarIcon(
                icon: Icons.person,
                inactiveIcon: Icons.person,
                darkMode: false,
                active: (state.selectedScreenIndex == 3),
                onClick: () => state.selectScreen(3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
