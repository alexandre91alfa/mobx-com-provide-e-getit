import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers.dart';

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
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
