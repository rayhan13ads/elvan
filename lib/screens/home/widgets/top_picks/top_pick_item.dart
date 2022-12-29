import 'package:elvan/constants/app_theme.dart';
import 'package:elvan/controller/index.dart';
import 'package:elvan/models/product.dart';
import 'package:elvan/service/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class TopPickItem extends StatefulWidget {
  final Product product;
  TopPickItem({Key? key, required this.product}) : super(key: key);

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
                      widget.product.title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text(
                        widget.product.sub_title,
                        style: Theme.of(context).textTheme.labelSmall,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$${widget.product.price}',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: primaryColor),
                        ),
                        Spacer(),
                        Consumer(builder: (context, ref, _) {
                          final cartState = ref.watch(cartController);
                          return IconButton(
                              onPressed: () {
                                cartState.addCart(widget.product);
                              },
                              icon: Icon(
                                Icons.add_circle,
                                color: primaryColor,
                              ));
                        })
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  top: -53,
                  left: -56,
                  child: Image.network(
                    widget.product.image,
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
