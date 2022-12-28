import 'dart:ui';

import 'package:elvan/constants/app_theme.dart';
import 'package:elvan/constants/assets_path.dart';
import 'package:elvan/constants/texts.dart';
import 'package:elvan/screens/home/widgets/background_widget.dart';
import 'package:elvan/screens/home/widgets/categories/categories_widget.dart';
import 'package:elvan/screens/home/widgets/home_appbar.dart';
import 'package:elvan/screens/home/widgets/recently_ordered/recently_widget.dart';
import 'package:elvan/utils/sizer_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: primaryColor));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundWidget(),
        Positioned(child: HomeAppbar()),
        Positioned(
            top: toolBarHeight(context) + 10,
            right: 0,
            left: 0,
            child: Column(
              children: [
                CategroiesWidget(),
                SingleChildScrollView(
                  child: Column(
                    children: [RecentlyWidget()],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
