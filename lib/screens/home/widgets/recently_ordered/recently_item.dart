import 'package:elvan/constants/app_theme.dart';
import 'package:elvan/controller/index.dart';
import 'package:elvan/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentlyItem extends ConsumerStatefulWidget {
  final Cart cart;
  const RecentlyItem({Key? key, required this.cart}) : super(key: key);

  @override
  ConsumerState<RecentlyItem> createState() => _RecentlyItemState();
}

class _RecentlyItemState extends ConsumerState<RecentlyItem> {
  bool isDelete = false;
  @override
  Widget build(BuildContext context) {
    final cartState = ref.watch(cartController);
    return GestureDetector(
      onLongPress: (() {
        setState(() {
          isDelete = true;
        });
        if (isDelete) {
          Future.delayed(Duration(seconds: 3), () {
            cartState.remove(widget.cart);
            setState(() {
              isDelete = false;
            });
          });
        }
      }),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: 174,
        height: 82,
        child: Card(
          color: isDelete ? Colors.redAccent : cardBgDarkColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Text(
                          '${widget.cart.product.title}',
                          style: widget.cart.product.title.length > 16
                              ? Theme.of(context).textTheme.labelSmall
                              : Theme.of(context).textTheme.bodyLarge,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Text(
                        'x${widget.cart.qty}',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        '\$${widget.cart.subTotal}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: primaryColor),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: -42,
                    left: -58,
                    child: Image.network(
                      "${widget.cart.product.image}",
                      fit: BoxFit.contain,
                      width: 124,
                      height: 124,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
