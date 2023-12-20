import 'package:flutter/material.dart';
import 'package:flutter_haydn_base/providers/product_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/test_provider.dart';

class ThirdView extends ConsumerWidget {
  const ThirdView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productProvider);
    products.when(
      data: (data) {
        print('data : ${data}');
      },
      error: (e, stackTrace) {
        print('e : $e');
      },
      loading: () {
        print('loading');
      },
    );
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
