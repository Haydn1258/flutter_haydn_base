import 'package:domain/domain.dart';
import 'package:flutter_haydn_base/locator.dart';
import 'package:flutter_haydn_base/views/base/base_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeViewModel extends BaseViewModel {
  final GetProductsUseCase testUseCase = getIt.get<GetProductsUseCase>();

  final StateProvider<int> count = StateProvider((ref) => 0);

  void plus(WidgetRef ref) {
    ref.read(count.notifier).update((state) => state + 1);
  }
}
