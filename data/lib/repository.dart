import 'package:data/local/i_local_data_source.dart';
import 'package:data/remote/i_remote_data_source.dart';
import 'package:domain/repository/i_repository.dart';

class Repository extends IRepository {
  Repository({required this.remoteDataSource, required this.localDataSource});

  final IRemoteDataSource remoteDataSource;
  final ILocalDataSource localDataSource;

  @override
  Future<int> getTest(String test) {
    // TODO: implement getTest
    throw UnimplementedError();
  }
}
