import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:providemobx/page.dart';

import 'controllers.dart';

//singleton
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = GetIt.I.get<Counter>();
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Page(),
                ),
              );
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(
              builder: (_) {
                return Center(
                  child: Text("conta: ${counter.count}"),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: counter.increment,
      ),
    );
  }
}
