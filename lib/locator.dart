import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter_haydn_base/view_model_provider.dart';
import 'package:flutter_haydn_base/views/home/home_view.dart';
import 'package:flutter_haydn_base/views/next_test/next_test_view.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  final IRepository repository = Repository(
      remoteDataSource: RemoteDataSource(), localDataSource: LocalDataSource());

  /// use cases
  getIt.registerSingleton(GetProductsUseCase(repository));

  /// view model provider
  getIt.registerSingleton<ViewModelProvider>(ViewModelProvider());

  /// views
  getIt.registerFactory<HomeView>(() => HomeView());
  getIt.registerFactory<NextTestView>(() => NextTestView());
}
