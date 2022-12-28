import 'package:flutter/material.dart';

double statusHeight(BuildContext context) => MediaQuery.of(context).padding.top;
double bottomHeight(BuildContext context) =>
    MediaQuery.of(context).padding.bottom;
double toolBarHeight(BuildContext context) =>
    MediaQuery.of(context).padding.top + 66;

double width(BuildContext context) =>
    MediaQuery.of(context).size.width;

double height(BuildContext context) =>
    MediaQuery.of(context).size.height;