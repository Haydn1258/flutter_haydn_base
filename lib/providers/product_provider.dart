import 'dart:async';

import 'package:domain/domain.dart';
import 'package:entity/entity.dart';
import 'package:flutter_haydn_base/locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// class ProductNotifier extends StateNotifier<AsyncValue<List<GetProductsRes>>> {
//   ProductNotifier() : super(const AsyncValue.loading()) {
//     fetchData();
//   }
//
//   Future<void> fetchData() async {
//     final data = await getIt
//         .get<GetProductsUseCase>()
//         .request(GetProductsReq(keyword: '', isKo: false));
//     state = data;
//   }
// }
//
// final productProvider = StateNotifierProvider.autoDispose<ProductNotifier,
//     AsyncValue<List<GetProductsRes>>>((ref) {
//   return ProductNotifier();
// });

final productProvider =
    FutureProvider.autoDispose<AsyncValue<List<GetProductsRes>>>((ref) async {
  return await getIt
      .get<GetProductsUseCase>()
      .request(GetProductsReq(keyword: '', isKo: false));
});
