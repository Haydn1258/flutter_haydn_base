import 'package:domain/usecase/test_use_case.dart';
import 'package:flutter_haydn_base/locator.dart';
import 'package:flutter_haydn_base/views/base/base_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeViewModel extends BaseViewModel {
  final TestUseCase testUseCase = getIt.get<TestUseCase>();

  final StateProvider<int> count = StateProvider((ref) => 0);

  void plus(WidgetRef ref) {
    ref.read(count.notifier).update((state) => state + 1);
    print(ref.read(count.notifier).state);
  }
}
