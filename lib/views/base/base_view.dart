import 'package:flutter/cupertino.dart';
import 'package:flutter_haydn_base/views/base/base_view_model.dart';
import 'package:flutter_haydn_base/views/base/view_model_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../locator.dart';

abstract class BaseView<VM extends BaseViewModel>
    extends ConsumerStatefulWidget {
  BaseView({Key? key}) : super(key: key);

  @protected
  final VM viewModel = getIt.get<ViewModelProvider>().getViewModel<VM>();

  @override
  // ignore: library_private_types_in_public_api
  _BaseViewState<VM> createState() => _BaseViewState();

  Widget build(BuildContext context, WidgetRef ref);
}

class _BaseViewState<VM extends BaseViewModel> extends ConsumerState<BaseView> {
  @override
  WidgetRef get ref => context as WidgetRef;

  @override
  Widget build(BuildContext context) {
    return widget.build(context, ref);
  }
}
