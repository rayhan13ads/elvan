import 'package:elvan/constants/app_theme.dart';
import 'package:elvan/constants/texts.dart';
import 'package:elvan/models/category.dart';
import 'package:elvan/screens/home/widgets/categories/categories_Item.dart';
import 'package:elvan/utils/sizer_utils.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategroiesWidget extends StatefulWidget {
  const CategroiesWidget({Key? key}) : super(key: key);

  @override
  State<CategroiesWidget> createState() => _CategroiesWidgetState();
}

class _CategroiesWidgetState extends State<CategroiesWidget> {
  final Stream<QuerySnapshot> _categoriesStream =
      FirebaseFirestore.instance.collection('catgories').snapshots();
  int selectedIndex = 0;

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
            height: 110,
            child: StreamBuilder<QuerySnapshot>(
                stream: _categoriesStream,
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
                  return ListView.builder(
                    itemCount: snapshot.data?.docs.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      Map<String, dynamic> data = snapshot.data?.docs[index]
                          .data()! as Map<String, dynamic>;

                      return CategoryItem(
                        cardColor: selectedIndex == index
                            ? primaryColor
                            : cardBgDarkColor,
                        category: Category(
                            id: snapshot.data!.docs[index].id,
                            name: data['name'],
                            image: data['image']),
                        onClick: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      );
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
