import 'package:flutter_haydn_base/views/base/base_view_model.dart';
import 'package:flutter_haydn_base/views/home/home_view_model.dart';
import 'package:get/get.dart';

final class ViewModelProvider {
  VM getViewModel<VM extends BaseViewModel>() {
    return switch (VM) {
      HomeViewModel => _getViewModelInGetX(HomeViewModel() as VM),
      _ => throw Exception("not contains viewModel")
    };
  }

  VM _getViewModelInGetX<VM extends BaseViewModel>(VM viewModelClass) {
    if (Get.isRegistered<VM>()) {
      print('register');
      return Get.find();
    } else {
      print('create');
      return Get.put(viewModelClass);
    }
  }
}
