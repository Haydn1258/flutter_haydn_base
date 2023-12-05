import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class UseCase<VO, T> {
  Future<AsyncValue<T>> request(VO vo) async {
    try {
      return AsyncValue.data(await api(vo));
    } catch (e) {
      return AsyncValue.error(e as Exception, StackTrace.current);
    }
  }

  Future<T> api(VO vo);
}
