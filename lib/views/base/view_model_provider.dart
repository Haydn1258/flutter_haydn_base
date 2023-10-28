import 'package:flutter_haydn_base/views/base/base_view_model.dart';
import 'package:flutter_haydn_base/views/home/home_view_model.dart';
import 'package:get/get.dart';

final class ViewModelProvider {
  VM getViewModel<VM extends BaseViewModel>() {
    if (Get.isRegistered<VM>()) {
      return Get.find();
    }
    return switch (VM) {
      HomeViewModel => _putViewModelInGetX(HomeViewModel()),
      _ => throw Exception("not contains viewModel")
    };
  }

  void deleteViewModel<VM extends BaseViewModel>() => Get.delete<VM>();

  VM _putViewModelInGetX<VM extends BaseViewModel>(BaseViewModel viewModel) =>
      Get.put(viewModel as VM);
}
