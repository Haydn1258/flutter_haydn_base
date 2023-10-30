import 'package:flutter/cupertino.dart';

abstract class UseCase<VO, RESULT> {
  Future<RESULT> request(
      {required VO vo,
      required Function(RESULT result) onSuccess,
      required Function(dynamic error) onError}) async {
    return api(vo)
        .catchError((error) => onError.call(error))
        .then((value) => onSuccess.call(value));
  }

  @protected
  Future<RESULT> api(VO vo);
}
