import 'package:entity/entity.dart';

abstract interface class IRemoteDataSource {
  Future<List<GetProductsRes>> getProducts(GetProductsReq vo);
}
