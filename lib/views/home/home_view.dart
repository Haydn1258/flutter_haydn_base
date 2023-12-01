import 'package:flutter/material.dart';
import 'package:flutter_haydn_base/views/next_test/next_test_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/test_provider.dart';

class HomeView extends ConsumerWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                final count = ref.watch(counterProvider.notifier);
                count.state = (count.state + 1);
                onNextScreen(context, NextTestView());
              },
              child: Container(
                  height: 200,
                  width: 250,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 15,
                          offset: const Offset(10, 10),
                          color: Colors.black.withOpacity(0.3))
                    ],
                  ),
                  child: Container(
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              width: 30,
            ),
          ],
        ),
      ),
    );
  }
}

extension NextScreenExt on ConsumerWidget {
  void onNextScreen(BuildContext context, ConsumerWidget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }
}
