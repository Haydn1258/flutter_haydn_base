import 'package:json_annotation/json_annotation.dart';

part 'get_products_res.g.dart';

@JsonSerializable()
class GetProductsRes {
  final String rating;
  final String priceUnit;
  final int price;

  GetProductsRes(
    this.rating,
    this.priceUnit,
    this.price,
  );

  factory GetProductsRes.fromJson(Map<String, dynamic> json) =>
      _$GetProductsResFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$GetProductsResToJson(this);
}
