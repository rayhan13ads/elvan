import 'package:elvan/constants/texts.dart';
import 'package:elvan/screens/home/widgets/top_picks/top_pick_item.dart';
import 'package:elvan/utils/sizer_utils.dart';
import 'package:flutter/material.dart';

class TopPicksWidget extends StatelessWidget {
  const TopPicksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            toppicks,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: 10,),
         GridView.builder(
           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 2,
             childAspectRatio:  174 / 211
           ),
           itemCount: 10,
           shrinkWrap: true,
           padding: EdgeInsets.zero,
           physics: NeverScrollableScrollPhysics(),
           itemBuilder: (BuildContext context, int index) {
             return TopPickItem();
           },
         ),
        ],
      ),
    );
  }
}
