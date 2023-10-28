import 'package:flutter/cupertino.dart';
import 'package:flutter_haydn_base/views/base/base_view_model.dart';
import 'package:flutter_haydn_base/views/base/view_model_provider.dart';

abstract class BaseView<VM extends BaseViewModel> extends StatelessWidget {
  BaseView({super.key});

  @protected
  Widget get screen;

  @protected
  late final VM viewModel;

  @override
  Widget build(BuildContext context) {
    viewModel = ViewModelProvider().getViewModel<VM>();
    return screen;
  }
}
