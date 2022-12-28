import 'package:elvan/constants/texts.dart';
import 'package:elvan/screens/home/widgets/recently_ordered/recently_item.dart';
import 'package:elvan/utils/sizer_utils.dart';
import 'package:flutter/material.dart';

class RecentlyWidget extends StatelessWidget {
  const RecentlyWidget({Key? key}) : super(key: key);

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
                recently,
                style: Theme.of(context).textTheme.titleMedium,
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
            height: 90,
            child: ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return RecentlyItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}