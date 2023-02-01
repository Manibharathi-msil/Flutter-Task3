import 'package:flutter_bloc/flutter_bloc.dart';

import 'count_event.dart';
import 'count_state.dart';

class CountBloc extends Bloc<CounterEvents, CounterStates>{
  //This constructor must call the super constructor and as we call it
  // we intialize the state by calling the initial state class
  CountBloc():super(InitialState()){
    //register with on keyword and we have to pass the event and emit object
on<Increment>((event, emit){
  //with emit actually we can change the state of the variable
emit(CounterStates(counter: state.counter+1));
});

on<Decrement>((event, emit){
emit(CounterStates(counter:state.counter-1));
});
}
}