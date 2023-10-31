import 'package:flutter/material.dart';
import 'package:flutter_haydn_base/views/home/home_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: getIt.get<HomeView>(),
    );
  }
}
