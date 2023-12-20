// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductsRes _$GetProductsResFromJson(Map<String, dynamic> json) =>
    GetProductsRes(
      json['rating'] as String,
      json['priceUnit'] as String,
      json['price'] as int,
    );

Map<String, dynamic> _$GetProductsResToJson(GetProductsRes instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'priceUnit': instance.priceUnit,
      'price': instance.price,
    };
