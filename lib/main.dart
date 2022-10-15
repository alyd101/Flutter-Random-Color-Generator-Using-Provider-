import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_color_generator/pages/main_page.dart';
import 'package:random_color_generator/providers/random_color_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => RandomColor(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
