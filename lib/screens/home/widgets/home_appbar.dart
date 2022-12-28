import 'dart:ffi';

import 'package:elvan/constants/app_theme.dart';
import 'package:elvan/constants/assets_path.dart';
import 'package:elvan/utils/sizer_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      height: toolBarHeight(context),
      color: primaryColor,
      child: Center(
        child: Padding(
          padding:  EdgeInsets.only(top: statusHeight(context)),
          child: SvgPicture.asset(
            LOGO_SVG,
            height: 28,
            width: 103,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
