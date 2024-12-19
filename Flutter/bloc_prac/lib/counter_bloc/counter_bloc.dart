import 'package:bloc_prac/counter_bloc/counter_event.dart';
import 'package:bloc_prac/counter_bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc  extends Bloc <CounterEvent,CounterState>{
  CounterBloc():super(CounterState(count: 0)){

    on <CounterIncrementEvent>(
      (event, emit){
        emit(CounterState(count: state.count+1));
      },
      );

      on <CounterDecrementEvent>(
      (event, emit){
        emit(CounterState(count: state.count-1));
      },
      );

      on <CounterResetEvent>(
      (event, emit){
        emit(CounterState(count: 0));
      },
      );
      
  }
}