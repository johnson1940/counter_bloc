import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  /// Add 1 to the current state.
  void increment() => emit(state + 1);

  /// Subtract 1 from the current state.
  void decrement() => emit(state - 1);
}
