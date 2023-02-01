//base class
class CounterStates{
  int counter;
  CounterStates({required this.counter});
}
//This class extends our base class
//call this class to intialize our state variable value from our block
class InitialState extends CounterStates{
  InitialState():super(counter:0);
}