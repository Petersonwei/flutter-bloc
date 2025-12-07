import 'package:flutter_bloc/flutter_bloc.dart';
import '../../counter_state.dart';
import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<IncrementCounterEvent>((event, emit) {
      final newState = state.copyWith(count: state.count + 1);
      emit(newState);
    });

    on<DecrementCounterEvent>(_decrementCounter);
  }

  void _decrementCounter(DecrementCounterEvent event, Emitter<CounterState> emit) {
    final newState = state.copyWith(count: state.count - 1);
    emit(newState);
  }
}