import 'dart:convert';

import 'package:data/src/remote/i_remote_data_source.dart';
import 'package:entity/entity.dart';

import 'api.dart';
import 'api_helper.dart';

class RemoteDataSource implements IRemoteDataSource {
  @override
  Future<List<GetProductsRes>> getProducts(GetProductsReq vo) async {
    final res = await ApiHelper.dio
        .get(Api.getProducts)
        .timeout(const Duration(seconds: 1));
    return jsonDecode(res.data).map<GetProductsRes>((json) {
      return GetProductsRes.fromJson(json);
    }).toList();
  }
}
//test
