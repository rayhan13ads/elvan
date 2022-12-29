import 'package:elvan/constants/app_theme.dart';
import 'package:elvan/constants/texts.dart';
import 'package:elvan/models/product.dart';
import 'package:elvan/screens/home/widgets/top_picks/top_pick_item.dart';
import 'package:elvan/utils/sizer_utils.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TopPicksWidget extends StatefulWidget {
  const TopPicksWidget({Key? key}) : super(key: key);

  @override
  State<TopPicksWidget> createState() => _TopPicksWidgetState();
}

class _TopPicksWidgetState extends State<TopPicksWidget> {

     final Stream<QuerySnapshot> _productsStream =
      FirebaseFirestore.instance.collection('products').snapshots();


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
         StreamBuilder<QuerySnapshot>(
           stream: _productsStream,
           builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
             if (snapshot.hasError) {
                    return Text('Something went wrong');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          color: primaryColor,
                        ),
                      ),
                    );
                  }
             return GridView.builder(
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 childAspectRatio:  174 / 211
               ),
               itemCount: snapshot.data?.docs.length,
               shrinkWrap: true,
               padding: EdgeInsets.zero,
               physics: NeverScrollableScrollPhysics(),
               itemBuilder: (BuildContext context, int index) {
                  Map<String, dynamic> data = snapshot.data?.docs[index]
                          .data()! as Map<String, dynamic>;

                 return TopPickItem(product: Product.fromJson(data),);
               },
             );
           }
         ),
        ],
      ),
    );
  }
}
