part of 'counter_cubit.dart';

abstract class CounterState extends Equatable {
  final int counter;

  const CounterState(this.counter);

  @override
  List<Object> get props => [counter]; // Essa forma é por conta do equatable
}

class CounterStateInitial extends CounterState {
  const CounterStateInitial()
      : super(0); // Para o meu contador comecar em "0",.

}

class CounterStateData extends CounterState {
  const CounterStateData(int counter) : super(counter);
}
