import 'package:entity/entity.dart';

abstract interface class IRepository {
  Future<List<GetProductsRes>> getProducts(GetProductsReq vo);
}
