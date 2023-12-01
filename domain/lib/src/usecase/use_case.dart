import 'package:domain/src/usecase/result.dart';

abstract class UseCase<VO, T> {
  Future<Result<T>> operator(VO vo) async {
    try {
      return Success(await api(vo));
    } catch (e) {
      return Error(e as Exception);
    }
  }

  Future<T> api(VO vo);
}
