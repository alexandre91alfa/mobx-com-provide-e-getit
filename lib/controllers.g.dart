// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controllers.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on CounterBase, Store {
  final _$countAtom = Atom(name: 'CounterBase.count');

  @override
  int get count {
    _$countAtom.context.enforceReadPolicy(_$countAtom);
    _$countAtom.reportObserved();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.context.conditionallyRunInAction(() {
      super.count = value;
      _$countAtom.reportChanged();
    }, _$countAtom, name: '${_$countAtom.name}_set');
  }

  final _$CounterBaseActionController = ActionController(name: 'CounterBase');

  @override
  dynamic increment() {
    final _$actionInfo = _$CounterBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }
}
