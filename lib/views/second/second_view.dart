import 'package:flutter/material.dart';
import 'package:flutter_haydn_base/views/home/home_view.dart';
import 'package:flutter_haydn_base/views/third/third_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SecondView extends ConsumerWidget {
  SecondView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            onNextScreen(context, ThirdView());
          },
          child: Text(
            "sadfaaaa",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
