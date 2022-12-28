import 'package:elvan/constants/app_theme.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  final int index;
  CategoryItem({Key? key, required this.index}) : super(key: key);

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = widget.index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 123,
        width: 102,
        child: Card(
          color: selected == widget.index ? primaryColor : cardBgDarkColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/piceOfPiza.png',
                width: 58,
                height: 58,
              ),
              Text(
                'Pizza',
                style: Theme.of(context).textTheme.titleSmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
