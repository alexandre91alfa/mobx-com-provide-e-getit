import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'controllers.dart';
import 'home.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<Counter>(Counter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'provider',
      home: Home(),
    );
  }
}
