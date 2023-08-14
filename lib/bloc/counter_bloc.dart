import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    on<IncrementEvent>((event, emit) {
      emit(CounterState(count: state.count + 1));
    });
    on<DecrementEvent>((event, emit) {
      emit(CounterState(count: state.count - 1));
    });
  }
}
