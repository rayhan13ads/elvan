// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as String,
      title: json['title'] as String,
      sub_title: json['sub_title'] as String,
      price: json['price'] as int,
      catgory_id: json['catgory_id'] as int,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sub_title': instance.sub_title,
      'price': instance.price,
      'catgory_id': instance.catgory_id,
      'image': instance.image,
    };