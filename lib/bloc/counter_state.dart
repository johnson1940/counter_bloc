part of 'counter_bloc.dart';

@immutable
sealed class CounterBlocState {}

final class CounterInitial extends CounterBlocState {}

class CounterValue extends CounterBlocState {
  final int value;

  CounterValue(this.value);
}