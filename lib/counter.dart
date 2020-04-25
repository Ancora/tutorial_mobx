import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  // Para uso sem mobx_codegen e build_runner (não compatíveis com WEB)
/* class Counter {
  Counter() {
    increment = Action(_increment);
  }

  Observable _count = Observable(0);
  int get count => _count.value;

  Action increment;

  void _increment() {
    _count.value++;
  } */

  //Para uso com mobx_codegen e build_runner (não compatíveis com WEB)
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }
}
