import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';


@freezed
class Product with _$Product {
  const factory Product( {
   required String id,
   required String title,
   required String sub_title,
   required int price,
   required int catgory_id,
   required String image,

  }) = _Product;
 

  factory Product.fromJson(Map<String, Object?> json) => _$ProductFromJson(json);
}
