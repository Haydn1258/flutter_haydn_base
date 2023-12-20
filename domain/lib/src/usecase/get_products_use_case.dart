import 'package:domain/src/repository/i_repository.dart';
import 'package:domain/src/usecase/use_case.dart';
import 'package:entity/entity.dart';

class GetProductsUseCase extends UseCase<GetProductsReq, List<GetProductsRes>> {
  GetProductsUseCase(this._repository);

  final IRepository _repository;

  @override
  Future<List<GetProductsRes>> api(GetProductsReq vo) =>
      _repository.getProducts(vo);
}
