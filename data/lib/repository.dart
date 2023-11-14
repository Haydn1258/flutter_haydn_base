import 'package:data/local/i_local_data_source.dart';
import 'package:data/remote/i_remote_data_source.dart';
import 'package:domain/repository/i_repository.dart';
import 'package:get_it/get_it.dart';

class Repository extends IRepository {
  final IRemoteDataSource remoteDataSource =
      GetIt.instance.get<IRemoteDataSource>();
  final ILocalDataSource localDataSource =
      GetIt.instance.get<ILocalDataSource>();

  @override
  Future<int> getTest(String test) {
    // TODO: implement getTest
    throw UnimplementedError();
  }
}
