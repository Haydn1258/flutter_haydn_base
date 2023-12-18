import 'package:data/src/local/i_local_data_source.dart';
import 'package:data/src/remote/i_remote_data_source.dart';
import 'package:domain/domain.dart';
import 'package:entity/entity.dart';

class Repository implements IRepository {
  Repository({required this.remoteDataSource, required this.localDataSource});

  final IRemoteDataSource remoteDataSource;
  final ILocalDataSource localDataSource;

  @override
  Future<List<GetProductsRes>> getProducts(GetProductsReq vo) {
    return remoteDataSource.getProducts(vo);
  }
//test
}
