import 'package:domain/repository/i_repository.dart';
import 'package:domain/usecase/use_case.dart';
import 'package:get_it/get_it.dart';

class TestUseCase extends UseCase<String, int> {
  final IRepository _repository = GetIt.instance.get<IRepository>();

  @override
  Future<int> api(String vo) => _repository.getTest(vo);
}
