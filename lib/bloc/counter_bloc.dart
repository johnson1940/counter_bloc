import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterBlocState> {
  CounterBloc() : super(CounterValue(0)) {
    on<CounterIncrementEvent>((event, emit) {
      final currentState = state;
      if (currentState is CounterValue) {
        emit(CounterValue(currentState.value + 1));
      }
    });

    on<CounterDecrementEvent>((event, emit) {
      final currentState = state;
      if (currentState is CounterValue) {
        emit(CounterValue(currentState.value - 1));
      }
    });
  }
}