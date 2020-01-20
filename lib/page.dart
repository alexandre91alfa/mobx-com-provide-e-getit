import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'controllers.dart';

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = GetIt.I.get<Counter>();
    return Scaffold(
      appBar: AppBar(
        title: Text("ola mundo"),
      ),
      body: Center(
        child: Text(
          "${counter.count}",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
