import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'provider',
        home: Home(),
      ),
      providers: [
        Provider<Counter>(
          create: (_) => Counter(),
        ),
      ],
    );
  }
}
