import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elvan/models/product.dart';

addProducts() {
  // ignore: prefer_const_constructors
  List<Product> products = [
    Product(
        id: 2,
        catgory_id: "ABb4VvBoIxvSdesAf7ux",
        title: 'Neapolitan Pizza',
        sub_title:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum lacus purus, nec dignissim dui pretium ac. Vivamus et enim luctus, porta eros et, vestibulum ipsum. Morbi cursus lacus turpis, vitae luctus ante lacinia sit amet. Maecenas elementum lacus turpis, in lacinia eros convallis ac.',
        image:
            'https://firebasestorage.googleapis.com/v0/b/elvan-870ae.appspot.com/o/piza.png?alt=media&token=c2612bb7-6ad8-4d93-8347-662e863aa84e',
        price: 199),
    Product(
        id: 2,
        catgory_id: "ABb4VvBoIxvSdesAf7ux",
        title: 'Chicago Pizza',
        sub_title:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum lacus purus, nec dignissim dui pretium ac. Vivamus et enim luctus, porta eros et, vestibulum ipsum. Morbi cursus lacus turpis, vitae luctus ante lacinia sit amet. Maecenas elementum lacus turpis, in lacinia eros convallis ac.',
        image:
            'https://firebasestorage.googleapis.com/v0/b/elvan-870ae.appspot.com/o/piza.png?alt=media&token=c2612bb7-6ad8-4d93-8347-662e863aa84e',
        price: 199),
    Product(
        id: 2,
        catgory_id: "ABb4VvBoIxvSdesAf7ux",
        title: 'New York-Style Pizza',
        sub_title:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum lacus purus, nec dignissim dui pretium ac. Vivamus et enim luctus, porta eros et, vestibulum ipsum. Morbi cursus lacus turpis, vitae luctus ante lacinia sit amet. Maecenas elementum lacus turpis, in lacinia eros convallis ac.',
        image:
            'https://firebasestorage.googleapis.com/v0/b/elvan-870ae.appspot.com/o/piza.png?alt=media&token=c2612bb7-6ad8-4d93-8347-662e863aa84e',
        price: 199),
    Product(
        id: 3,
        catgory_id: "ABb4VvBoIxvSdesAf7ux",
        title: 'Neapolitan Pizza',
        sub_title:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum lacus purus, nec dignissim dui pretium ac. Vivamus et enim luctus, porta eros et, vestibulum ipsum. Morbi cursus lacus turpis, vitae luctus ante lacinia sit amet. Maecenas elementum lacus turpis, in lacinia eros convallis ac.',
        image:
            'https://firebasestorage.googleapis.com/v0/b/elvan-870ae.appspot.com/o/piza.png?alt=media&token=c2612bb7-6ad8-4d93-8347-662e863aa84e',
        price: 199),
    Product(
        id: 4,
        catgory_id: "ABb4VvBoIxvSdesAf7ux",
        title: 'Sicilian Pizza',
        sub_title:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum lacus purus, nec dignissim dui pretium ac. Vivamus et enim luctus, porta eros et, vestibulum ipsum. Morbi cursus lacus turpis, vitae luctus ante lacinia sit amet. Maecenas elementum lacus turpis, in lacinia eros convallis ac.',
        image:
            'https://firebasestorage.googleapis.com/v0/b/elvan-870ae.appspot.com/o/piza.png?alt=media&token=c2612bb7-6ad8-4d93-8347-662e863aa84e',
        price: 199),
    Product(
        id: 5,
        catgory_id: "ABb4VvBoIxvSdesAf7ux",
        title: 'Greek Pizza',
        sub_title:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum lacus purus, nec dignissim dui pretium ac. Vivamus et enim luctus, porta eros et, vestibulum ipsum. Morbi cursus lacus turpis, vitae luctus ante lacinia sit amet. Maecenas elementum lacus turpis, in lacinia eros convallis ac.',
        image:
            'https://firebasestorage.googleapis.com/v0/b/elvan-870ae.appspot.com/o/piza.png?alt=media&token=c2612bb7-6ad8-4d93-8347-662e863aa84e',
        price: 199),
    Product(
        id: 6,
        catgory_id: "ABb4VvBoIxvSdesAf7ux",
        title: 'California Pizza',
        sub_title:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum lacus purus, nec dignissim dui pretium ac. Vivamus et enim luctus, porta eros et, vestibulum ipsum. Morbi cursus lacus turpis, vitae luctus ante lacinia sit amet. Maecenas elementum lacus turpis, in lacinia eros convallis ac.',
        image:
            'https://firebasestorage.googleapis.com/v0/b/elvan-870ae.appspot.com/o/piza.png?alt=media&token=c2612bb7-6ad8-4d93-8347-662e863aa84e',
        price: 199),
    Product(
        id: 7,
        catgory_id: "ABb4VvBoIxvSdesAf7ux",
        title: 'Detroit Pizza',
        sub_title:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum lacus purus, nec dignissim dui pretium ac. Vivamus et enim luctus, porta eros et, vestibulum ipsum. Morbi cursus lacus turpis, vitae luctus ante lacinia sit amet. Maecenas elementum lacus turpis, in lacinia eros convallis ac.',
        image:
            'https://firebasestorage.googleapis.com/v0/b/elvan-870ae.appspot.com/o/piza.png?alt=media&token=c2612bb7-6ad8-4d93-8347-662e863aa84e',
        price: 199),
    Product(
        id: 8,
        catgory_id: "ABb4VvBoIxvSdesAf7ux",
        title: 'St. Louis Pizza',
        sub_title:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum lacus purus, nec dignissim dui pretium ac. Vivamus et enim luctus, porta eros et, vestibulum ipsum. Morbi cursus lacus turpis, vitae luctus ante lacinia sit amet. Maecenas elementum lacus turpis, in lacinia eros convallis ac.',
        image:
            'https://firebasestorage.googleapis.com/v0/b/elvan-870ae.appspot.com/o/piza.png?alt=media&token=c2612bb7-6ad8-4d93-8347-662e863aa84e',
        price: 199),
  ];

  CollectionReference ref = FirebaseFirestore.instance.collection('products');

  for (var element in products) {
    ref.add(element.toJson());
  }
}
