import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  final IRepository repository = Repository(
      remoteDataSource: RemoteDataSource(), localDataSource: LocalDataSource());

  /// pref manager
  getIt.registerSingleton<PrefManager>(
      PrefManager(pref: await SharedPreferences.getInstance()));

  /// use cases
  getIt.registerSingleton(GetProductsUseCase(repository));
}
