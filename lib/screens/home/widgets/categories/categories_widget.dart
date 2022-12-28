import 'package:elvan/constants/app_theme.dart';
import 'package:elvan/constants/texts.dart';
import 'package:elvan/screens/home/widgets/categories/categories_Item.dart';
import 'package:elvan/utils/sizer_utils.dart';
import 'package:flutter/material.dart';

class CategroiesWidget extends StatelessWidget {
  const CategroiesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          // title + view all
          Row(
            children: [
              Text(
                categories,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Spacer(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    viewall,
                    style: Theme.of(context).textTheme.labelSmall,
                  ))
            ],
          ),

          SizedBox(
            width: width(context),
            height: 123,
            child: ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return CategoryItem(index: index,);
              },
            ),
          ),
        ],
      ),
    );
  }
}
