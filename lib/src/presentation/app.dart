import 'package:flutter/material.dart';
import 'package:flutter_riverpod_clean_architecture/src/presentation/page/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
