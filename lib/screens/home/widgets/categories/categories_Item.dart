import 'package:elvan/constants/app_theme.dart';
import 'package:elvan/models/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  
  final Color cardColor;
  final void Function() onClick;

  CategoryItem(
      {Key? key,
      required this.category,
      required this.onClick,
      this.cardColor = cardBgDarkColor,
    })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 110,
        width: 90,
        child: Card(
          color: cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                category.image,
                width: 50,
                height: 50,
              ),
              Text(
                category.name,
                style: Theme.of(context).textTheme.titleSmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
