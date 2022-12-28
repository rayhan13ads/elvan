import 'package:elvan/constants/app_theme.dart';
import 'package:flutter/material.dart';

class RecentlyItem extends StatelessWidget {
  const RecentlyItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 174,
      height: 82,
      child: Card(
        color: cardBgDarkColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 0,
        child: Stack(
         clipBehavior: Clip.antiAlias,
         fit: StackFit.passthrough,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pizza',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'x2',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    '\$199',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: primaryColor),
                  )
                ],
              ),
            ),
            
            Positioned(
                top: -42,
                left: -58,
                child: FittedBox(
                  
                  fit: BoxFit.scaleDown,
                  child: Image.asset('assets/images/piza.png', fit: BoxFit.cover,width: 124,height: 124,),
                )),
          ],
        ),
      ),
    );
  }
}
