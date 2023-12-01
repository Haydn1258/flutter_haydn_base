import 'package:flutter/material.dart';
import 'package:flutter_haydn_base/views/base/base_view.dart';
import 'package:flutter_haydn_base/views/next_test/next_test_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../test_provider.dart';

class NextTestView extends BaseView<NextTestViewModel> {
  NextTestView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            final count = ref.watch(counterProvider.notifier);
            count.state = (count.state + 1);
          },
          child: Text(
            "${ref.watch(counterProvider)} aaaa",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
