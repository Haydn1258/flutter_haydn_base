import 'package:domain/repository/i_repository.dart';
import 'package:domain/usecase/use_case.dart';

class TestUseCase extends UseCase<String, int> {
  TestUseCase({required IRepository repository}) : _repository = repository;

  final IRepository _repository;

  @override
  Future<int> api(String vo) => _repository.getTest(vo);
}
