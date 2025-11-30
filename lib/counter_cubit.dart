import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(count: 0));

  void increment() {
    final newState = state.copyWith(count: state.count + 1);
    print('New state: $newState');
    emit(newState);
  }

  void decrement() {
    final newState = state.copyWith(count: state.count - 1);
    print('New state: $newState');
    emit(newState);
  }
}