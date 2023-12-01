class GetProductsRes {
  final String rating;
  final String priceUnit;
  final int price;

  GetProductsRes({
    required this.rating,
    required this.priceUnit,
    required this.price,
  });

  factory GetProductsRes.fromJson(Map<String, dynamic> json) {
    return GetProductsRes(
      rating: json['rating'] ?? '0.0',
      priceUnit: json['priceUnit'] ?? '₩',
      price: json['price'] ?? 0,
    );
  }
}
