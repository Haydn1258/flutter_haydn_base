import 'package:data/local/i_local_data_source.dart';
import 'package:data/local/local_data_source.dart';
import 'package:data/remote/i_remote_data_source.dart';
import 'package:data/remote/remote_data_source.dart';
import 'package:data/repository.dart';
import 'package:domain/repository/i_repository.dart';
import 'package:domain/usecase/test_use_case.dart';
import 'package:flutter_haydn_base/view_model_provider.dart';
import 'package:flutter_haydn_base/views/home/home_view.dart';
import 'package:flutter_haydn_base/views/next_test/next_test_view.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  /// data source
  getIt.registerSingleton<IRemoteDataSource>(RemoteDataSource());
  getIt.registerSingleton<ILocalDataSource>(LocalDataSource());

  /// repository
  getIt.registerSingleton<IRepository>();

  /// use cases
  getIt.registerSingleton(TestUseCase());

  /// view model provider
  getIt.registerSingleton<ViewModelProvider>(ViewModelProvider());

  /// views
  getIt.registerFactory<HomeView>(() => HomeView());
  getIt.registerFactory<NextTestView>(() => NextTestView());
}
