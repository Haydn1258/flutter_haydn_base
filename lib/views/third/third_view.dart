import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/consumer.dart';

import '../../providers/test_provider.dart';

class ThirdView extends ConsumerWidget {
  const ThirdView({super.key});

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
