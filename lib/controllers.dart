import 'package:mobx/mobx.dart';

part 'controllers.g.dart';

class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable
  int count = 0;

  @action
  increment() {
    count++;
  }
}
