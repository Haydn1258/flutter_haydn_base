import 'package:data/local/local_data_source.dart';
import 'package:data/remote/remote_data_source.dart';
import 'package:data/repository.dart';
import 'package:domain/repository/i_repository.dart';
import 'package:domain/usecase/test_use_case.dart';
import 'package:flutter_haydn_base/views/base/view_model_provider.dart';
import 'package:flutter_haydn_base/views/home/home_view.dart';
import 'package:flutter_haydn_base/views/next_test/next_test_view.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  IRepository repository = Repository(
    remoteDataSource: RemoteDataSource(),
    localDataSource: LocalDataSource(),
  );
  getIt.registerSingleton(TestUseCase(repository: repository));
  getIt.registerSingleton<ViewModelProvider>(ViewModelProvider());
  getIt.registerFactory<HomeView>(() => HomeView());
  getIt.registerFactory<NextTestView>(() => NextTestView());
}
