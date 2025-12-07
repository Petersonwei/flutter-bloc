import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  const CounterState({required this.count});

  final int count;

  factory CounterState.initial() {
    return const CounterState(count: 0);
  }

  CounterState copyWith({int? count}) {
    return CounterState(count: count ?? this.count);
  }

  @override
  List<Object> get props => [count];

  @override
  String toString() => 'CounterState(count: $count)';
}