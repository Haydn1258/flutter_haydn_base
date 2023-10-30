import 'package:flutter_haydn_base/locator.dart';
import 'package:flutter_haydn_base/views/base/base_view_model.dart';
import 'package:flutter_haydn_base/views/home/home_view_model.dart';

final class ViewModelProvider {
  VM getViewModel<VM extends BaseViewModel>() {
    if (getIt.isRegistered<VM>()) {
      return getIt.get<VM>();
    }
    return switch (VM) {
      HomeViewModel => _registerVewModel(HomeViewModel()),
      _ => throw Exception("not contains viewModel")
    };
  }

  void deleteViewModel<VM extends BaseViewModel>() => getIt.unregister<VM>();

  VM _registerVewModel<VM extends BaseViewModel>(BaseViewModel viewModel) {
    getIt.registerSingleton<VM>(viewModel as VM);
    return viewModel;
  }
}
