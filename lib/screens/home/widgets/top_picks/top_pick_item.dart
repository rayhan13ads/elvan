import 'package:elvan/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class TopPickItem extends StatefulWidget {
  TopPickItem({Key? key}) : super(key: key);

  @override
  State<TopPickItem> createState() => _TopPickItemState();
}

class _TopPickItemState extends State<TopPickItem> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 211,
      width: 174,
      child: Card(
        elevation: 0,
        color: cardBgDarkColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 68),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Clipobal',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum lacus purus, nec dignissim dui pretium ac. Vivamus et enim luctus, porta eros et, vestibulum ipsum. Morbi cursus lacus turpis, vitae luctus ante lacinia sit amet. Maecenas elementum lacus turpis, in lacinia eros convallis ac.',
                        style: Theme.of(context).textTheme.labelSmall,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$199',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: primaryColor),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_circle,
                              color: primaryColor,
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  top: -53,
                  left: -56,
                  child: Image.asset(
                    'assets/images/piza.png',
                    fit: BoxFit.contain,
                    width: 128,
                    height: 128,
                  )),
              Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          isFavourite = !isFavourite;
                        });
                      },
                      icon: Icon(
                        FontAwesome.heart,
                        color: isFavourite ? primaryColor : Colors.white,
                        size: 18,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
