import 'package:flutter/material.dart';
import 'package:flutter_haydn_base/views/base/base_view.dart';
import 'package:flutter_haydn_base/views/base/base_view_model.dart';
import 'package:flutter_haydn_base/views/home/home_view_model.dart';

class HomeView extends BaseView<HomeViewModel> {
  HomeView({super.key});

  @override
  Widget get screen => test();

  Widget test() {
    print(viewModel.test);
    return Container();
  }
}
