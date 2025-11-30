import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  const CounterState({required this.count});

  final int count;

  CounterState copyWith({int? count}) {
    return CounterState(count: count ?? this.count);
  }

  @override
  List<Object> get props => [count];
}