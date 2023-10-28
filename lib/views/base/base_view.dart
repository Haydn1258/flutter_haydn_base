import 'package:flutter/cupertino.dart';
import 'package:flutter_haydn_base/views/base/base_view_model.dart';
import 'package:flutter_haydn_base/views/base/view_model_provider.dart';

abstract class BaseView<VM extends BaseViewModel> extends StatelessWidget {
  BaseView({super.key});

  @protected
  late final VM viewModel;

  Widget getScreen(BuildContext context);

  @override
  Widget build(BuildContext context) {
    viewModel = ViewModelProvider().getViewModel<VM>();
    return getScreen(context);
  }
}
