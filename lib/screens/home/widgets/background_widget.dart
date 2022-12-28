import 'dart:ui';

import 'package:elvan/constants/app_theme.dart';
import 'package:elvan/constants/assets_path.dart';
import 'package:elvan/utils/sizer_utils.dart';
import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
        // background color
        Container(
          width: width(context),
          height: height(context),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(BG_IMG),
              fit: BoxFit.fill,
            ),
          ),
        ),
        //filter
        Positioned.fill(
          child: Center(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 7.5,
                sigmaY: 7.5,
              ),
              child: Container(
                color: backDropColor,
              ),
            ),
          ),
        ),
    ],);
  }
}